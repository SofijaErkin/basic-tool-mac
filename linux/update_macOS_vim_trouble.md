# Updated macOS makes Vim And Terminal trouble

Update 10 05 2022 AM 01:19 EST

[New Trouble](https://stackoverflow.com/questions/71954487/xcodebuild-error-requested-but-didnt-find-extension-point-with-identifier):

fix refer [here](https://developer.apple.com/forums/thread/703233).

while new log into terminal:

    xcodebuild[1285:7402]

    Requested but did not find extension point with identifier

    Xcode.IDEKit.ExtensionSentinelHostApplications for extension

    Xcode.DebuggerFoundation.AppExtensionHosts.watchOS 
    
    of plug-in com.apple.dt.IDEWatchSupportCore

    xcodebuild[1285:7402]

    Requested but did not find extension point with identifier 
    
    Xcode.IDEKit.ExtensionPointIdentifierToBundleIdentifier for extension

    Xcode.DebuggerFoundation.AppExtensionToBundleIdentifierMap.watchOS 
    
    of plug-in com.apple.dt.IDEWatchSupportCore

Or

    xcodebuild[1395:9112]

    Requested but did not find extension point with identifier

    Xcode.IDEKit.ExtensionSentinelHostApplications for extension

    Xcode.DebuggerFoundation.AppExtensionHosts.watchOS 
    
    of plug-in com.apple.dt.IDEWatchSupportCore

    xcodebuild[1395:9112]

    Requested but did not find extension point with identifier

    Xcode.IDEKit.ExtensionPointIdentifierToBundleIdentifier for extension 
    
    Xcode.DebuggerFoundation.AppExtensionToBundleIdentifierMap.watchOS

    of plug-in com.apple.dt.IDEWatchSupportCore

Try to fix!

try to  install the Xcode command line tools

    xcode-select --install

but

    xcode-select: error: command line tools are already installed, use "Software Update" to install updates

continue

    softwareupdate --install

but

    Software Update Tool

nothing was installed.

another try

    softwareupdate -d -a

but

    Software Update Tool

    Finding available software

    No updates are available.

another try

    sudo xcode-select -s /Library/Developer/CommandLineTools

maybe the upstairs fixed the problem.

and download the "Command Line tools" for Xcode `13.3.1` or `13.4` or `13.4.1`

also try

    xcodebuild --help

but [new Problem](https://stackoverflow.com/questions/17980759/xcode-select-active-developer-directory-error):

    xcode-select: error: tool 'xcodebuild' requires Xcode, but active developer directory '/Library/Developer/CommandLineTools' is a command line tools instance

Fixed.

while type `"vim xxx"`, then:

    Error detected while processing /Users/yq/.vim/bundle/vim-fugitive/plugin/fugitive.vim:

    line  410: E1208: -complete used without allowing arguments

    line  411: E1208: -complete used without allowing arguments

    Error detected while processing /Users/yq/.vim_runtime/sources_non_forked/tlib/plugin/02tlib.vim:

    line   77: E1208: -complete used without allowing arguments

    Press ENTER or type command to continue

Solution:

[It can be solved temporarily by removing the "-complete" arg](https://github.com/amix/vimrc/issues/645#issuecomment-880528000) of the lines that

report errors.

refer:

[E1208: Error detected while processing /usr/share/vim/vimfiles/plugin/fugitive.vim](https://github.com/tpope/vim-fugitive/issues/1791)

[E1208 error #645](https://github.com/amix/vimrc/issues/645)

OR,

    Error detected while processing /Users/yq/.vim/bundle/vim-fugitive/plugin/fugitive.vim:

    line  410: E1208: -complete used without allowing arguments

    line  411: E1208: -complete used without allowing arguments
    
    Error detected while processing /Users/yq/.vim_runtime/sources_non_forked/tlib/plugin/02tlib.vim:

    line   77: E1208: -complete used without allowing arguments
    
    Error detected while processing /Users/yq/.vim/bundle/YouCompleteMe/plugin/youcompleteme.vim:

    line  304:E108: No such variable: "key"

Fixed!

For :

   Error detected while processing /Users/yq/.vim/bundle/vim-fugitive/plugin/fugitive.vim:

    line  410: E1208: -complete used without allowing arguments

    line  411: E1208: -complete used without allowing arguments 

fixed with:

    cd /Users/yq/.vim/bundle/vim-fugitive/plugin/

    git pull --rebase 
For :

   Error detected while processing /Users/yq/.vim_runtime/sources_non_forked/tlib/plugin/02tlib.vim:

    line   77: E1208: -complete used without allowing arguments 

fixed with:

    cd /Users/yq/.vim_runtime/sources_non_forked/tlib/plugin/
    
    git pull --rebase

For:

   Error detected while processing /Users/yq/.vim/bundle/YouCompleteMe/plugin/youcompleteme.vim:

    line  304:E108: No such variable: "key" 

fixed with:

[reinstall `YouCompleteMe` via `Vundle` on `VIM`](https://gist.github.com/SofijaErkin/9318ecb63460400c8b3876cce6c2bf25#for-macos).
