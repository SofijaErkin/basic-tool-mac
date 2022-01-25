//
//
//
//
/*
Problems:
1."missing separator. Stop."
StackOverFlow:
1.https://stackoverflow.com/questions/920413/make-error-missing-separator
2.https://stackoverflow.com/questions/16931770/makefile4-missing-separator-stop

reference: https://www.gnu.org/software/make/manual/html_node/Error-Messages.html
"missing separator (did you mean TAB instead of 8 spaces?). Stop."

This means that make could not understand much of anything about the makefile 
line it just read. GNU make looks for various separators (:, =, recipe prefix 
characters, etc.) to indicate what kind of line it’s parsing. This message means
it couldn’t find a valid one.

One of the most common reasons for this message is that you (or perhaps your 
oh-so-helpful editor, as is the case with many MS-Windows editors) have 
attempted to indent your recipe lines with spaces instead of a tab character.
In this case, make will use the second form of the error above. Remember that 
every line in the recipe must begin with a tab character (unless you set 
.RECIPEPREFIX; see Special Variables). Eight spaces do not count. See Rule 
Syntax. 

Solution:
1.DO NOT USE VSCode.
2.begin every line with a tab character in Makefile.

Other reference:
1.homebrew-core/Formula/makefile2graph.rb:
desc "Create a graph of dependencies from GNU-Make"
  homepage "https://github.com/lindenb/makefile2graph"
  sha256 "9464c6c1291609c211284a9889faedbab22ef504ce967b903630d57a27643b40"
  license "MIT"
  head "https://github.com/lindenb/makefile2graph.git"
https://github.com/Homebrew/homebrew-core/blob/master/Formula/makefile2graph.rb

*/
//
