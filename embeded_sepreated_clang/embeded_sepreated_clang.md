I am an expert on this.

If you use "`clang --version`" to checkout the version of the clang compiler on your mac, then as you got that:

    Apple LLVM version 9.1.0 (clang-902.0.39.1)

    Target: x86_64-apple-darwin17.4.0

    Thread model: posix

    InstalledDir: /Library/Developer/CommandLineTools/usr/bin

What you want to know that which the actual Clang version on Mac?

In other words, you want to ask, which the actual Clang version for your Xcode is been used on Mac?

As your Mac terminal output,(The output tells you things about your Xcode on your mac)

the first line "`Apple LLVM version 9.1.0 (clang-902.0.39.1)`" means:

your installed Xcode version was `9.3` or `9.3.1`, including the default 

installed Clang version `9.1.0`(This Clang version Identifier was

`clang-902.0.39.1`).

the second and third line do no matter with your Clang Version.

the fourth line "`InstalledDir: /Library/Developer/CommandLineTools/usr/bin`"

means:

Where is your now using Clang locations. 

Or, 

if you want to know which clang version are your Xcode(mac) using? you need to go that directory `/Library/Developer/CommandLineTools/usr/bin`.

Just use this command to checkout which clang version your Mac(==Xcode) are using now:

    cd /Library/Developer/CommandLineTools/usr/lib/clang/ && ls

That may shows like this:

    9.0.0

or 

    9.1.0

or 

    10.0.0

As this may show, The Clang versionof your Xcode Now may use `9.0.0`, or `9.0.1` or `10.0.0`.

But 

why your `now using Clang version` is difference with the d`efault installed Clang version of Xcode` including?

Or,

why there are `another Clang version` out of the `default including Clang` version of Xcode?

Or,

Xcode comes `with Clang`, why there are `another version Clang`?

As I know, 

the newable version of `Xcodes` are including the `Command Line Tools`.

Or, the new version of Xcode comes with `Command Line Tools`; 

or, If you use Xcode, the `Command Line Tools`  are also embedded within the 

Xcode IDE.

And 

the `Command Line Tool` are including many useful tools, such as 

the `Apple LLVM` compiler(`LLVM-Clang`), linker, and Make. 

And

And

And

Why you havs a `Command Line Tools of Xcode` and another `separated Command Line Tools`.

Maybe your install a separated Command Line Tools after installing Xcode!

And, 

you may select the `separated Command Line Tools` via using "`xcode-select --switch <path>`" to replace the `default Command Line Tools of Xcode`
according to old blog's guidance.

Just like this image(from [Chinese Website juejing][1])

[![Your Mac Choded embeded Xcode command-line tools][2]][2]

As i see,

The Xcode.app was stored in `/Applications/Xcode.app/Contents/Developer`.

The separated Command Line Tools was stored in `/Library/Developer/CommandLineTools`.

Just like this image(from [Chinese Blog Website juejin][1]):

[![separated command-line tools VS embeded Xcode command-line tools][3]][3]

So, when you use "`clang --version`" to checkout the clang version of your Mac you ar using, that shows:

    Apple LLVM version 9.1.0 (clang-902.0.39.1)

    Target: x86_64-apple-darwin17.4.0

    Thread model: posix

    InstalledDir: /Library/Developer/CommandLineTools/usr/bin

So, if you are using the default Xcode of command-line Tools, what would that "`clang --version`" output?

here comes the using default Xcode of command-line Tools:

    Apple LLVM version 9.1.0 (clang-902.0.39.1)

    Target: x86_64-apple-darwin17.4.0

    Thread model: posix

    InstalledDir: /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin

All in all, if you have [more than one xcode installed][4] on mac or more than one [separated command-line tools][5], you will have more than one command-line tools;

Just like "macOS10.14SDK(command-line tools) PK macOS10.15SDK(command-line tools)" image(from [Chinese Website Blog juejin][1]) shows:

[![command-line-tools(macOS10.14SDK) VS command-line-tools(macOS10.15SDK)][6]][6]


Others, the connction of `Xcode` and `command-line tools` just like this image(from [Chinese Website juejin][1])

[![Xcode connect with command-line tools][7]][7]

Also, you will have more than one clang to chose for using.

Last, what i want to say is, which clang version are your mac using, that depends the directory of command-line tools's chosed InstalledDir.

If your mac [use the default `embeded Xcode command-line tools`][8],

then, 

that "`Apple LLVM version 9.1.0 (clang-902.0.39.1)`" shows your using `Clang 9.1.0` with it's Identifier `clang-902.0.39.1`, 

your using Clang installed dirctory was in 

    /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin

If your mac use `separated command-line tools`,

then,

that "`Apple LLVM version 9.1.0 (clang-902.0.39.1)`" ONLY express your installed Xcode `9.3/9.3.1` with embeded command-line tools(`Clang 9.1.0`) ,

Your mac Now used command-line tools was from Xcode.

And, 

that "`InstalledDir: /Library/Developer/CommandLineTools/usr/bin`" shows

where Now your Mac using command-line tools(Clang compiler) was in 

or 

where Now your Mac using Clang compiler was in.

Last Last Last,

Your macOS High Sierra version 10.13.3 [could install Xcode version][9] up to `Xcode 10.1`, 

and [Clang version up to][10] `Clang 10.0.0`.

As your "`clang --version`" shows, you are Not using the embeded Xcode command-line tools(Clang),

Now You are using the separated (command-line tools)/Clang, 

enter Your `InstalledDir` show directory "`/Library/Developer/CommandLineTools/usr/bin`" to checkout Now Your Mac using version.

Just using this command to checkout what the version of Clang you are using:

    cd /Library/Developer/CommandLineTools/usr/lib/clang/ && ls 

（Infer from the command-lin tools downloadable on your computer's current system 10.13.3）

Take my `macOS 10.12` for example, my Xcode could up to `Xcode9.2`, 

and Clang could up to `Clang9.0.0`,

Because I have installed a separated command-line tools with `Clang 9.0.0`,

My VSCode C/C++ compiler just use `Clang9.0.0` via the separated command-line tools,

My Xcode C/C++ compiler just use `Clang8.1.0` via the embeded Xcode command-line tools.


  [1]: https://juejin.cn/post/6844904052271087624
  [2]: https://i.stack.imgur.com/8pbwh.png
  [3]: https://i.stack.imgur.com/OozLl.png
  [4]: https://stackoverflow.com/questions/669367/can-i-have-multiple-xcode-versions-installed
  [5]: https://apple.stackexchange.com/questions/196368/command-line-tools-difference
  [6]: https://i.stack.imgur.com/5N9mi.png
  [7]: https://i.stack.imgur.com/ZFxOd.png
  [8]: https://gist.github.com/yamaya/2924292
  [9]: https://developer.apple.com/download/all/?q=xcode
  [10]: https://en.wikipedia.org/wiki/Xcode#Toolchain_versions
