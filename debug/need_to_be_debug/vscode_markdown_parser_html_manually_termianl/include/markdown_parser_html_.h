#ifndef _MARKDOWN_PARSER_HTML_H_
#define _MARKDOWN_PARSER_HTML_H_
#include <fstream>

#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <stdio.h>

#include <string>
#include <vector>

// #include <utility>

// using namespace std;

#define kMaxLength 10000

// enum the keywords of parser
enum{
  nul       = 0,
  paragraph = 1,
  href      = 2,
  ul        = 3,
  ol        = 4,
  li        = 5,
  em        = 6,
  strong    = 7,
  hr        = 8,
  br        = 9,
  image     = 10,
  quote     = 11,
  h1        = 12,
  h2        = 13,
  h3        = 14,
  h4        = 15,
  h5        = 16,
  h6        = 17,
  blockcode = 18,
  code      = 19
};

// HTML front tags
const std::string kFrontTag[] = {
  "","<p>","<ul>","<ol>","<li>","<em>","<strong>",
  "<hr color=#CCCCCC size=1 />","<br />",
  "","<blockquote>",
  "<h1 ","<h2 ","<h3 ","<h4 ","<h5 ","<h6 ",// right > for the othetags
  "<pre><code>","<code>"
};

// HTML back tags
const std::string kBackTag[] = {
  "","</p>","","</ul>","</ol>","</li>","</em>","</strong>",
  "","","","</blockquote>",
  "</h1>","</h2>","</h3>","</h4>","</h5>","</h6>",
  "</code></pre>","</code>"
};

// save the structure of contents
typedef struct ContentNode {
  std::string heading;
  std::string tag; 
  std::vector<ContentNode *> vec_node;
  ContentNode(const std::string & heading_string) 
      : heading(heading_string) {}
} ContentNode;

// save the content
typedef struct Node {
    int type; // the node_type of Node 
    // elem[0] save the content of displaying
    // elem[1] save the links
    // elem[3] save the title
    std::string elem[3];
    std::vector<Node *> vec_node;
    Node(int node_type) : type(node_type) {}
} Node;

extern Node *node_root_, *node_now_;
extern ContentNode *content_root_;
extern std::string content, TOC;
extern int content_num_tag_ ;// = 0;
extern char src_[kMaxLength];

bool IsHeaading(Node *node);
bool IsImage(Node * node);
bool IsHref(Node * node);
// destory the node 
template <typename T>
void Destroy(T *vec_tmp) { 
  for (int i = 0; i < static_cast<int>(vec_tmp->vec_node.size()); i++) {
    Destroy(vec_tmp->vec_node[i]);
  }
  delete vec_tmp;
}

void ContentDFS(ContentNode *cnode, std::string index_string);
void ContentInsertNodes(ContentNode *cnode, int num, 
      const std::string &str, int tag);
void DFS(Node *node);

bool IsCuttingLine(char *source);
void MakeParagragh(Node *node);

std::pair<int, char*> Start(char* char_ptr);
std::pair<int, char*> JudgeType(char * source);

Node* FindNode(int depth_of_node);
void InsertNodeToString(Node *node, const std::string &str);

class MarkdownParser {
 public:
  // constructor
  MarkdownParser(const std::string &file_name);
  // To get the contents of file HTML in Markdown 
  std::string get_file_contents() { return TOC; }
  // To get the THINGS, which are from Markdown trans to HMTL
  std::string get_content() {return content;}
  // deconstructor
  ~ MarkdownParser(); 
};
#endif // _MARKDOWN_PARSER_HTML_H_
