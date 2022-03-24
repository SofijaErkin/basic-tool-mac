//
// main.cpp
// MarkdownParser
// 
#include <iostream>
#include <fstream> // std::ofstream
// The needing realizable class of Markdown Parser
#include "../include/markdown_parser.h" 

int main(int argc, char* argv[]) {

  // Upload or create a file of Markdown
  MarkdownParser markdown_parser(
      "../test_markdown_case/markdown_test.md");

  // To get the contents of file HTML in Markdown
  std::string contents = markdown_parser.get_file_contents();

  // To get the THINGS, which are from Markdown trans to HTML
  std::string content = markdown_parser.get_content();

  // the head and end messages of HTML, ready to write into.
  std::string head_html = "<!DOCTYPE html><html><head>\
      <meta charset=\"utf-8\">\
      <title>Markdown</title>\
      <link rel=\"stylesheet\" href=\"../external_github_css_library/github.css\">\
      </head><body><article class=\"markdown-body\">";
  std::string end_html = "</article></body></html>";

  // put the result to the file
  std::ofstream out_file;
  out_file.open("../generated_markdown_output/markdown_html.html");

  // Put the content of transformation to the construction of <article>
  // </article> title in HTML
  out_file << head_html+contents+content+end_html;
  out_file.close();
  return 0;
}

