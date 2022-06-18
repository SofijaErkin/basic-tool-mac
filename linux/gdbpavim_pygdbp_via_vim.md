# Python Debug on Linux via DBGPavim and pydbgp

## DBGPavim Plugin

### Install DBGPavim

add the below to `~/.vimrc`:

    Plugin 'https://github.com/brookhong/DBGPavim.git'

also, using `:PluginInstall` to install plugin `DBGPavim`.

### Config DBGPavim

add the below to config the monitor port of debugger in `~/.vimrc`:

    let g:dbgPavimPort = 9009

## pydbgp Tool

### Install pydbgp

Just use this to download pydbgp:

    sudo wget http://downloads.activestate.com/Komodo/releases/12.0.1/remotedebugging/Komodo-PythonRemoteDebugging-12.0.1-91869-linux-x86_64.tar.gz

release the package:

    tar -zxvf Komodo-PythonRemoteDebugging-12.0.1-91869-linux-x86_64.tar.gz && cd Komodo-PythonRemoteDebugging-12.0.1-91869-linux-x86_64 && pwd && ls -a

### Settings pydbgp

Move python debug file to the target library:

    cp pydbgp pythonlib/

    cp py3_dbgp python3lib/

And, add the `pythonlib` or `python3lib` to the environment variable, add the

code to `~/.zshrc` or `~/.bashrc` or `~/.profile`:

    export PATH=$PATH:~/Komodo-PythonRemoteDebugging-12.0.1-91869-linux-x86_64/python3lib

## Debug Python Test

Using `F5` to enter debug status, `F10` ensure the break point, `:Dp` to enter

debugging.

But mission fell!

## Debug hot-keys

`F5`: enable monitor debug;

`F6`: disable monitor debug;

`F1`: open/close the helper window;

`F2`: enter with step;

`F3`: jump with step;

`F4`: exit with step;

`F5`: continue process until the next break point, exit the debugger status

while no next break point;

`F9`: Bigger the size of the target window, or reset the display of window;

`F11`: checkout all the value of the current variables, differ stack, differ

value;

`F12`: watch out the value of the variable where the cursor is locate.
