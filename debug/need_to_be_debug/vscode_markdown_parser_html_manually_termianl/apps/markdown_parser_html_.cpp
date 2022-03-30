#include "../include/markdown_parser_html_.h"

Node *node_root_, *node_now_;
ContentNode *content_root_;
std::string content, TOC;
// int 
int content_num_tag_ = 0;
char src_[kMaxLength];

// if it is title
inline bool IsHeaading(Node *node) {
    return (node->type >= h1 && node->type <= h6);
}

// if it is image
inline bool IsImage(Node * node) {
    return (node->type == image);
}

// if it is super-link
inline bool IsHref(Node * node) {
    return (node->type == href);
}

// DFS contents
void ContentDFS(ContentNode *cnode, std::string index_string) {
  TOC += "<li>\n";
  TOC += "<a href=\"#" + cnode->tag + "\">" + index_string + " " + 
         cnode->heading + "</a>\n";
  int num_size = static_cast<int>(cnode->vec_node.size());    
  if (num_size) {
    TOC += "<ul>\n";
    for (int i = 0; i < num_size; i++) {
      ContentDFS(cnode->vec_node[i], index_string + 
          std::to_string(i + 1) + ".");
    }
    TOC += "</ul>\n";
  }
  TOC += "</li>\n";
}

// new contents Node insert
void ContentInsertNodes(ContentNode *cnode, int num, 
    const std::string &str, int tag) {
  int number = static_cast<int>(cnode->vec_node.size());
  if (1 == num) {
    cnode->vec_node.push_back(new ContentNode(str));
    cnode->vec_node.back()->tag = "tag"+ std::to_string(tag);
    return ;
  }
  if (!number || cnode->vec_node.back()->heading.empty())
    cnode->vec_node.push_back(new ContentNode(""));
  ContentInsertNodes(cnode->vec_node.back(), num - 1, str, tag);
}

// DFS content
void DFS(Node *node) {
  if (node->type == paragraph && node->elem[0].empty() && node->vec_node.empty()) 
    return ;
  content += kFrontTag[node->type];
  bool flag = true;

  // eading handleing, supporting the content jumping
  if (IsHeaading(node)) {
    content += "id=\"" + node->elem[0] + "\">";
    flag = false;
  }

  // liks
  if (IsHref(node)) {
    content += "<a href=\"" + node->elem[1] + "\" title=\"" + node->elem[2] +
         "\">" + node->elem[0] + "</a>";
    flag = false;
  }

  // image
  if (IsImage(node)) {
    content += "<img alt=\"" + node->elem[0] + "\" src=\"" + node->elem[1] + 
        "\" title=\"" + node->elem[2] + "\" />";
    flag = false;
  }

  // Defaultly, direct add the text
  if (flag) {
    content += node->elem[0];
    flag = false;
  }
     
  // cover all in one
  for (int i = 0; i < static_cast<int>(node->vec_node.size()); i++)
    DFS(node->vec_node[i]);
  
  // turn into end tag
  content += kBackTag[node->type];
}

// if is it changing line
inline bool IsCuttingLine(char *source) {
  int current_num = 0;
  char *pointer = source;
  while (*pointer) {
    // not spaces, tabs, '-' or '+', Do not change current line
    if (*pointer != ' ' && *pointer != '\t' && *pointer != '-')
      return false;
    if (*pointer == '-')
      current_num++;
    pointer++;
  }

  // '---' occurs, changing current line to next line
  return (current_num >= 3);
}

// product paragragh
inline void MakeParagragh(Node *node) {
  if (node->vec_node.size() == 1u && node->vec_node.back()->type == paragraph)
    return;
  if (node->type == paragraph)
    return ;
  if (node->type == nul) {
    node->type = paragraph;
    return ;
  }
  Node *node_pointer = new Node(paragraph);
  node_pointer->vec_node = node->vec_node;
  node->vec_node.clear();
  node->vec_node.push_back(node_pointer);
}

// !
// \brief start : trans the block and tab in lines
// \param src : sources string
// \return : std::pair<block*, tab*> char*
inline std::pair<int, char*> Start(char* char_ptr) {
  if (char_ptr == nullptr || 0 == static_cast<int>(strlen(char_ptr)))
    return std::make_pair(0, nullptr);   

  // count the number of blocks and tabs
  int count_num_space = 0, count_num_tab = 0;
  // from the first char to not space or tab chars, count numbers
  for (int i = 0; char_ptr[i] != '\0'; ++i ) {
    if (' ' == char_ptr[i]) {
      ++count_num_space;
      continue;
    } else if ('\t' == char_ptr[i]) {
      ++count_num_tab;
      continue;
    } else 
      // spaces and tabs before content, then count as tab
      // ont tab == four space
      return std::make_pair(count_num_space/4 + count_num_tab, char_ptr + i);
  }
  return std::make_pair(0, nullptr);
}

// !
// \brief JudgeType : judge the node_type of line
// \param str : source string
// \return : std::pair<node_type,no_line_keywords_content> char*
//
inline std::pair<int, char*> JudgeType(char * source) {
  char * pointer = source;

  // jump over '#'
  while ('#' == *pointer) ++pointer;

  // '<h>' tags, if space occurs.
  if (pointer - source > 0 && ' ' == *pointer) {
    return std::make_pair(pointer - source + h1 - 1, pointer + 1);
  }
    
  // Reset the location of parser
  pointer = source;
  // code block, if ``` occurs.
  if (0 ==strncmp(pointer, "```", 3)) {
    return std::make_pair(blockcode, pointer + 3);
  }

  // list block, if * + - occurs, and next char == ' '.
  if (0 == strncmp(pointer, "- ", 2) || \
      0 == strncmp(pointer, "* ", 2) || \
      0 == strncmp(pointer, "+ ", 2)) {
    return std::make_pair(ul, pointer + 1);
  }

  // orderd list block, if number occurs, and next char ..
  char * pointer_char = pointer;
  while (*pointer_char && (isdigit(*pointer_char))) {
    ++pointer_char;
  }
  if (pointer_char != pointer && *pointer_char =='.' && 
      pointer_char[1] == ' ') {
    return std::make_pair(ol, pointer_char +1);
  }

  // quote, if > occurs, and next char ' '.
  if ('>' == *pointer && (' ' == pointer[1])) {
    return std::make_pair(quote, pointer + 1);
  }

  // paragraph, defaultly.
  return std::make_pair(paragraph, pointer);
}

// find the depth of node 
// depth: the depth of tree
// return : the pointer of node
inline Node* FindNode(int depth_of_node) {
  Node *node_pointer = node_root_;
  while (!node_pointer->vec_node.empty() && depth_of_node !=0) {
    node_pointer = node_pointer->vec_node.back();
    if (node_pointer->type == li) depth_of_node--;
  }
  return node_pointer;
}

// insert the being going to handle string to content Node 
// node: 
// str: the being going to handle string 
//
void InsertNodeToString(Node *node, const std::string &str) {
  int num = static_cast<int>(str.size());
  bool in_code = false,
       in_em = false,
       in_strong = false,
       in_auto_link = false;
  node->vec_node.push_back(new Node(nul));

  for (int i = 0; i < num; i++) {
    char chr = str[i];
    if (chr == '\\') {
      chr = str[++i];
      node->vec_node.back()->elem[0] += std::string(1, chr);
      continue;
    } // if

    // handle code in line
    if (chr == '`' && !in_auto_link) {
      in_code ? node->vec_node.push_back(new Node(nul)) : 
          node->vec_node.push_back(new Node(code));
      in_code = !in_code;
      continue;
    } // if

    // handle strong
    if (chr == '*' && (i < num - 1 && (str[i + 1] == '*')) && 
        !in_code && !in_auto_link) {
      ++i;
      in_strong ? node->vec_node.push_back(new Node(nul)) : 
          node->vec_node.push_back(new Node(strong));
      in_strong = !in_strong;
      continue;
    }
    if (chr == '_' && !in_code && !in_strong && !in_auto_link) {
      in_em ? node->vec_node.push_back(new Node(nul)) : 
          node->vec_node.push_back(new Node(em));
      in_em = !in_em;
      continue;
    } // if 

    // handle image
    if (chr == '!' && (i < num - 1 && str[i + 1] == '[')&& !in_code &&
        !in_strong && !in_em && !in_auto_link) {
      node->vec_node.push_back(new Node(image));
      for (i += 2; i < num - 1 && str[i] != ']'; i++) 
        node->vec_node.back()->elem[0] += std::string(1, str[i]);
      i++;

      for (i++; i < num - 1 && str[i] != ' ' && str[i] != ')'; i++) 
        node->vec_node.back()->elem[1] += std::string(1, str[i]);
        
      if (str[i] != ')') {
        for (i++; i < num - 1 && str[i] != ')'; i++)
          if (str[i] != '"')
            node->vec_node.back()->elem[2] += std::string(1, str[i]);
      }
      node->vec_node.push_back(new Node(nul));
      continue;
    } // if
      
    // handle super-links
    if (chr == '[' && !in_code && !in_strong && !in_em && !in_auto_link) {
      node->vec_node.push_back(new Node(href));
      for (i++; i < num - 1 && str[i] != ']'; i++)
        node->vec_node.back()->elem[0] += std::string(1, str[i]);
      i++;

      for (i++; i < num - 1 && str[i] != ' ' && str[i] != ')'; i++)
        node->vec_node.back()->elem[1] += std::string(1, str[i]);
        
      if (str[i] != ')') {
        for (i++; i < num - 1 && str[i] != ')'; i++)
          if (str[i] != '"')
            node->vec_node.back()->elem[2] += std::string(1, str[i]);
      }
      node->vec_node.push_back(new Node(nul));
      continue;
    } // if

    node->vec_node.back()->elem[0] += std::string(1, chr); 
    if (in_auto_link) node->vec_node.back()->elem[1] += std::string(1, chr);
  } // for

  if (str.size() >= 2) {
    if (str.at(str.size() - 1) == ' ' && str.at(str.size() - 2) == ' ')
      node->vec_node.push_back(new Node(br));
  } // if

} // Insert()

MarkdownParser::MarkdownParser(const std::string &file_name) {
  content_root_ = new ContentNode("");
  node_root_ = new Node(nul);
  node_now_ =  node_root_;   

  std::ifstream file_input(file_name);
    
  bool new_para = false;       
  bool in_block = false;
  while (!file_input.eof()) {
    // get a line from file
    file_input.getline(src_,kMaxLength);
    // needing next line ,but not in code bolocks
    if (!in_block && IsCuttingLine(src_)) {
      node_now_ = node_root_;
      node_now_->vec_node.push_back(new Node(hr));
      new_para = false;
      continue;
    }

    // std::pair, a struct, turn two data to one data
    // calculate the blocks and tabs
    std::pair<int, char *> pair_struct = Start(src_);
    // read next line, if no code block and no blocks or tabs
    if (!in_block && pair_struct.second == nullptr) {
      node_now_ = node_root_;
      new_para = true;
      continue;
    }

    // analysis the node_type of the line in file
    std::pair<int, char *> type_judge = JudgeType(pair_struct.second);
    // code block
    if (type_judge.first == blockcode) {
      // push null Node
      in_block ? node_now_->vec_node.push_back(
          new Node(nul)) : node_now_->vec_node.push_back(
          new Node(blockcode));
      in_block = !in_block;
      continue;
    }
    // connect the content into this Node while in code block
    if (in_block) {
      node_now_->vec_node.back()->elem[0] += std::string(src_) + '\n';    
      continue;
    }
      
    // paragraph
    if (type_judge.first == paragraph) {
      if (node_now_ == node_root_) {
        node_now_ = FindNode(pair_struct.first);
        node_now_->vec_node.push_back(new Node(paragraph));
        node_now_ = node_now_->vec_node.back();
      }
      bool flag = false;
      if (new_para && !node_now_->vec_node.empty()) {
        Node* pointer = nullptr;
        for (auto i: node_now_->vec_node) {
          if (i->type == nul)
            pointer = i;
        }
        if (pointer != nullptr)
          MakeParagragh(pointer);
        flag = true;
      }
      if (flag) {
        node_now_->vec_node.push_back(new Node(paragraph));
        node_now_ = node_now_->vec_node.back();
      }
      node_now_->vec_node.push_back(new Node(nul));
      InsertNodeToString(node_now_->vec_node.back(), 
          std::string(type_judge.second));
      new_para = false;
      continue;
    }

    node_now_ = FindNode(pair_struct.first);
    // heading, insert tag
    if (type_judge.first >= h1 && type_judge.first <= h6) {
      node_now_->vec_node.push_back(new Node(type_judge.first));
      node_now_->vec_node.back()->elem[0] = 
          "tag" + std::to_string(++content_num_tag_);
      InsertNodeToString(node_now_->vec_node.back(), 
          std::string(type_judge.second));
      ContentInsertNodes(content_root_, type_judge.first - h1 + 1, 
          std::string(type_judge.second), content_num_tag_);
    }
    // unordered list
    if (type_judge.first == ul) {
      if (node_now_->vec_node.empty() || 
          node_now_->vec_node.back()->type != ul) {
        node_now_->vec_node.push_back(new Node(ul));
      }
      node_now_ = node_now_->vec_node.back();
      bool flag = false;
      if (new_para && !node_now_->vec_node.empty()) {
        Node* node_pointer = nullptr;
        for (auto i: node_now_->vec_node) {
          if (i->type == li) node_pointer = i;
        }
        if (node_pointer != nullptr) MakeParagragh(node_pointer);
          flag = true;
      }
      node_now_->vec_node.push_back(new Node(li));
      node_now_ = node_now_->vec_node.back();
      if (flag) {
        node_now_->vec_node.push_back(new Node(paragraph));
        node_now_ = node_now_->vec_node.back();
      }
      InsertNodeToString(node_now_, std::string(type_judge.second));
    }

    // ordered list
    if (type_judge.first == ol) {
      if (node_now_->vec_node.empty() || 
          node_now_->vec_node.back()->type != ol) {
        node_now_->vec_node.push_back(new Node(ol));
      }
      node_now_ = node_now_->vec_node.back();
      bool flag = false;
      if (new_para && !node_now_->vec_node.empty()) {
        Node* node_pointer = nullptr;
        for (auto i: node_now_->vec_node) {
          if (i->type == li) node_pointer = i;
        }
        if (node_pointer != nullptr) MakeParagragh(node_pointer);
          flag = true;
      }
      node_now_->vec_node.push_back(new Node(li));
      node_now_ = node_now_->vec_node.back();
      if (flag) {
        node_now_->vec_node.push_back(new Node(paragraph)); 
        node_now_ = node_now_->vec_node.back();
      }
        InsertNodeToString(node_now_, std::string(type_judge.second));
    }


    // quote
    if (type_judge.first == quote) {
      if (node_now_->vec_node.empty() || 
          node_now_->vec_node.back()->type != quote) {
        node_now_->vec_node.push_back(new Node(quote));
      }
      node_now_ = node_now_->vec_node.back();
      if (new_para || node_now_->vec_node.empty()) 
        node_now_->vec_node.push_back(new Node(paragraph));
      InsertNodeToString(node_now_->vec_node.back(),
          std::string(type_judge.second));
    }
    new_para = false;
  }  
      
  // read and analysis file over
  file_input.close();

  // depth first search for all the parser tree
  DFS(node_root_);

  // Construct the contents
  TOC += "<ul>";
  for (int i = 0; i < (int)content_root_->vec_node.size(); i++)
    ContentDFS(content_root_->vec_node[i], std::to_string(i + 1) + ".");
  TOC += "</ul>";
} // MarkdownParser

// deconstructor
MarkdownParser::~MarkdownParser() {
  Destroy<Node>(node_root_);
  Destroy<ContentNode>(content_root_);
}
