# Fix Java8 For IntelliJIdea

## BackUp

[GitHub repository](https://github.com/SofijaErkin/basic-tool-mac/blob/main/vscode/fix_java8_for_IntelliJIdea.md). [GitHub Gist](https://gist.github.com/SofijaErkin/cabddeb5704b0d062a463c1c89b4fc40).

## Two directory of IntelliJ Idea

`~/Library/Application Support/JetBrains/IdeaICYear.month`
`~/Library/Caches/JetBrains/IdeaICYear.month`

## Google Java Style for IntelliJ Idea

Download `Google Java Style` from:

    https://github.com/google/styleguide/blob/gh-pages/instmall-java-googlestyle.xml
Import the style guide for IntelliJ IDEA: `IntelliJ Idea`->`Preferences`->
`Editor` ->`Code Style`->`Java`, in the top right corner of the Java code style
settings page, click on the "gear icon" and select "Import Scheme", choose the
menu `IntelliJ Idea code style XML`, then select the
"intellij-java-google-style.xml" file that you downloaded and click "OK".

Formatting code using a shortcut key in IntelliJ IDEA is very simple. using

`Cmd+Option+L(Mac)`.

## Debug Tips on IntelliJ IDEA

`Bugger` logo or `^D` to start Debug the current program;

`F7`: Step into; `alt+shift+F7`: force step into; `F8`: Step Over; `shift+F8`:
Step out, `alt+F9`: Run to Cursor; `alt+F8`: Evaluate Expression;
Notice: `Evaluate Expression` calculate the value of an expression during the
debugging process without printing it to the console, such as defining new
variables, running methods, and more. This allows you to explore the code
interactively during the debugging process and calculate the values of various
expressions.
`Shift + F7`: Smart Step Into; `Com+shift+F8`: view all Java Line Breakpoints,->
`Condition`->`Log message to console`->`Evaluate and log`: run the line code,
calculate the expression and output the result into the console.
Also, notices the `Java Exception Breakpoints` and `NullPointerException`.
Multi-threads debug: View Breakpoints->Thread->Make Default(Switch thread);
Back to breakpoint: (1)Drop Frame: back to the breakpoint step by step via call
method; (2)Drop Frame->`9(Resume Program)`. Interpret debug: Force Return.
`alt+Com+R`: Resume program (witness the output after running on `Console`);
`Com+R`: return program or re-run debug or re-run; `Com+F2`: terminal debug;

## Nice tips to using IntelliJ Idea

Use the Smart code completion `⌃⇧Space` after the `new` keyword to instantiate
an object of the expected type(IntelliJ IDEA Community tips, #153).
To evaluate any expression while debugging your program, select the expression
in the editor and press `⌥F8`.
IntelliJ IDEA allows you to easily call a Java code from Kotlin and vice versa.
You can narrow down the list of code completion suggestions by using camel case
prefixes.
You can remove breakpoints by dragging them from the gutter. To configure this
option, open settings by pressing `⌘,`, go to `Build, Execution, Deployment |`
`Debugger`, and select `Drag to the editor or click with middle mouse button`.
When you click a breakpoint, you toggle the breakpoint status (enabled or
disabled).
Get access to the most common breakpoint actions and filters through intention
actions (`⌥⏎`).
Kotlin is a powerful, concise and expressive language crafted by JetBrains.
IntelliJ IDEA supports it out-of-the-box.
To create a Kotlin file, right-click the target folder, and choose the
corresponding option on the New menu.
If you position the caret at a symbol and press `⌃T`, the list of refactorings
applicable to the current context will open.
Press `F2` or `⇧F2` to jump to the next or previous error respectively in the
current file.
Press `⌥F7` to quickly locate all occurrences of code referencing the symbol at
the caret, no matter if the symbol is a part of a class, method, field,
parameter, or another statement.
You can view all statements within the method where certain exceptions can be
thrown. Place the caret at the `throws` statement and press `⇧⌘F7`.
The Extract Variable refactoring wraps the selected expression into a variable.
It adds a new variable declaration and uses the expression as an initializer.
To invoke this refactoring, select the expression and press `⌥⌘V` `(Refactor |`
`Extract | Variable)`.
Press `⇧⌘V` to choose from the recent clipboard contents chunks and insert it.
To make your printouts (`File | Print`) nice and informative, use keywords.
For example, use `$DATE$` and `$TIME$` to specify the exact date and time of
the printout.
IntelliJ IDEA Community can generate getter and setter methods for fields in
your class. With the caret inside the class, press `⌘N` (`Code | Generate`).
One can easily convert any Java class to the Kotlin one with the same
semantics.
To do that, just choose `Code | Convert Java File to Kotlin File` on the main
menu.
Scratch files are temporary files that let you experiment and prototype in the
editor, without creating any project files.
To create a scratch file, press `⇧⌘N`, and then select the language to use.
Press `⌘1` to open the Project tool window and switch focus to it.
Postfix code completion is applied from right to left to avoid backward caret
jumps when coding. Type a dot . after the code fragment that you want to change
and select the desired option.
To see the suggestion list with postfix templates, you can also press `⌘J`.
