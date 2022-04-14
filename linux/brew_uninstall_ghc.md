# brew uninstall ghc

Notices:

That `brew deps <package>` shows the least version deps!!!

pkg-config, gdbm, mpdecimal, readline, sqlite, xz, python@3.9, python@3.10, sphinx-doc, ghc, cabal-install and pandoc

brew deps vim

    berkeley-db
    ca-certificates
    gdbm
    gettext
    libyaml
    lua
    mpdecimal
    ncurses
    openssl@1.1
    perl
    python@3.9
    readline
    ruby
    sqlite
    xz
brew uninstall:

    pkg-config python@3.9 python@3.10 sphinx-doc  ghc cabal-install pandoc

End brew uninstall :

ghc: No install.

cabal-install:  No install.

pandoc: No install.

mpdecimal:
    /usr/local/Cellar/mpdecimal/2.5.1

    brew uninstall mpdecimal
xz:

    /usr/local/Cellar/xz/5.2.5
uninstall 5.2.5, and roll back to 5.2.4,

    Error: Refusing to uninstall /usr/local/Cellar/xz/5.2.5

    because it is required by cairo, glib, gobject-introspection, harfbuzz, 
    
    macvim, meson, pango, pdf2htmlex, python@3.9, sphinx-doc and ttfautohint, 
    
    which are currently installed.

    You can override this and force removal with:
        
        brew uninstall --ignore-dependencies xz
xz was downloaded by brew under `/usr/local/Cellar/xz/`, and its' functional

soft link was under `/usr/local/bin`.

Just use the below to check out that xz under `/usr/local/bin`:

    pwd && cd /usr/local/bin/ && pwd && ls -al | grep "xz"

1.uninstall `5.2.5`:

    brew uninstall --ignore-dependencies xz
And that terminal output:

    Uninstalling /usr/local/Cellar/xz/5.2.5... (95 files, 1.2MB)

    xz 5.2.4 is still installed.

    To remove all versions, run:

       brew uninstall --force xz
2.change functional soft link source directory, roll back to `5.2.4`.

change soft link source address under `/usr/local/bin` from

`/usr/local/Cellar/xz/5.2.5/` to `/usr/local/Cellar/xz/5.2.4/`.

    pwd && cd /usr/local/bin/ && pwd && ls -al | grep "xz"

    ln -s ../Cellar/xz/5.2.4/bin/lzcat lzcat

    ln -s ../Cellar/xz/5.2.4/bin/lzcmp lzcmp

    ln -s ../Cellar/xz/5.2.4/bin/lzdiff lzdiff

    ln -s ../Cellar/xz/5.2.4/bin/lzegrep lzegrep

    ln -s ../Cellar/xz/5.2.4/bin/lzfgrep lzfgrep

    ln -s ../Cellar/xz/5.2.4/bin/lzgrep lzgrep

    ln -s ../Cellar/xz/5.2.4/bin/lzless lzless

    ln -s ../Cellar/xz/5.2.4/bin/lzma lzma

    ln -s ../Cellar/xz/5.2.4/bin/lzmadec lzmadec

    ln -s ../Cellar/xz/5.2.4/bin/lzmainfo lzmainfo

    ln -s ../Cellar/xz/5.2.4/bin/lzmore lzmore

    ln -s ../Cellar/xz/5.2.4/bin/unlzma unlzma

    ln -s ../Cellar/xz/5.2.4/bin/unxz unxz

    ln -s ../Cellar/xz/5.2.4/bin/xz xz

    ln -s ../Cellar/xz/5.2.4/bin/xzcat xzcat

    ln -s ../Cellar/xz/5.2.4/bin/xzcmp xzcmp

    ln -s ../Cellar/xz/5.2.4/bin/xzdec xzdec

    ln -s ../Cellar/xz/5.2.4/bin/xzdiff xzdiff

    ln -s ../Cellar/xz/5.2.4/bin/xzegrep xzegrep

    ln -s ../Cellar/xz/5.2.4/bin/xzfgrep xzfgrep

    ln -s ../Cellar/xz/5.2.4/bin/xzgrep xzgrep

    ln -s ../Cellar/xz/5.2.4/bin/xzless xzless

    ln -s ../Cellar/xz/5.2.4/bin/xzmore xzmore

    ls -al | grep "xz"
python@3.10:
brew install python@3.10:

    ./configure --prefix=/usr/local/Cellar/python@3.10/3.10.0_2 --enable-ipv6 

    --datarootdir=/usr/local/Cellar/python@3.10/3.10.0_2/share --da

    install PYTHONAPPSDIR=/usr/local/Cellar/python@3.10/3.10.0_2

    frameworkinstallextras PYTHONAPPSDIR=/usr/local/Cellar/python@3.10/3.10.0_2/share/python@3.10

    /usr/local/Cellar/python@3.10/3.10.0_2/bin/python3 -m venv /private/tmp/pythonA3.10-20220412-96046-12laipd/Python-3.10.0/whl_build

    /private/tmp/pythonA3.10-20220412-96046-12laipd/Python-3.10.0/whl_build/bin/pip3 install -v --no-deps --no-binary :all: --no-index --no-b

    /private/tmp/pythonA3.10-20220412-96046-12laipd/Python-3.10.0/whl_build/bin/pip3 wheel -v --no-deps --no-binary :all: --no-index --no-bui

    /private/tmp/pythonA3.10-20220412-96046-12laipd/Python-3.10.0/whl_build/bin/pip3 wheel -v --no-deps --no-binary :all: --no-index --no-bui

    /private/tmp/pythonA3.10-20220412-96046-12laipd/Python-3.10.0/whl_build/bin/pip3 wheel -v --no-deps --no-binary :all: --no-index --no-bui

    /usr/local/Cellar/python@3.10/3.10.0_2/bin/python3 -m ensurepip

    /usr/local/Cellar/python@3.10/3.10.0_2/bin/python3 -m pip install -v --no-deps --no-index --upgrade --isolated --target=/usr/local/lib/py

uninstall:

    brew uninstall python@3.10
sphix-doc:
brew install sphix-doc:

    python3.10 -m venv --system-site-packages /usr/local/Cellar/sphinx-doc/4.3.1/libexec

    /usr/local/Cellar/sphinx-doc/4.3.1/libexec/bin/pip install -v --no-deps --no-binary :all: --ignore-installed /private/tmp/sphinx-doc--ala

    /usr/local/Cellar/sphinx-doc/4.3.1/libexec/bin/pip install -v --no-deps --no-binary :all: --ignore-installed /private/tmp/sphinx-doc--Bab

    /usr/local/Cellar/sphinx-doc/4.3.1/libexec/bin/pip install -v --no-deps --no-binary :all: --ignore-installed /private/tmp/sphinx-doc--cer

    /usr/local/Cellar/sphinx-doc/4.3.1/libexec/bin/pip install -v --no-deps --no-binary :all: --ignore-installed /private/tmp/sphinx-doc--cha

    /usr/local/Cellar/sphinx-doc/4.3.1/libexec/bin/pip install -v --no-deps --no-binary :all: --ignore-installed /private/tmp/sphinx-doc--doc

    /usr/local/Cellar/sphinx-doc/4.3.1/libexec/bin/pip install -v --no-deps --no-binary :all: --ignore-installed /private/tmp/sphinx-doc--idn

    /usr/local/Cellar/sphinx-doc/4.3.1/libexec/bin/pip install -v --no-deps --no-binary :all: --ignore-installed /private/tmp/sphinx-doc--ima

    /usr/local/Cellar/sphinx-doc/4.3.1/libexec/bin/pip install -v --no-deps --no-binary :all: --ignore-installed /private/tmp/sphinx-doc--Jin

    /usr/local/Cellar/sphinx-doc/4.3.1/libexec/bin/pip install -v --no-deps --no-binary :all: --ignore-installed /private/tmp/sphinx-doc--Mar

    /usr/local/Cellar/sphinx-doc/4.3.1/libexec/bin/pip install -v --no-deps --no-binary :all: --ignore-installed /private/tmp/sphinx-doc--num

    /usr/local/Cellar/sphinx-doc/4.3.1/libexec/bin/pip install -v --no-deps --no-binary :all: --ignore-installed /private/tmp/sphinx-doc--pac

    /usr/local/Cellar/sphinx-doc/4.3.1/libexec/bin/pip install -v --no-deps --no-binary :all: --ignore-installed /private/tmp/sphinx-doc--Pyg

    /usr/local/Cellar/sphinx-doc/4.3.1/libexec/bin/pip install -v --no-deps --no-binary :all: --ignore-installed /private/tmp/sphinx-doc--pyp

    /usr/local/Cellar/sphinx-doc/4.3.1/libexec/bin/pip install -v --no-deps --no-binary :all: --ignore-installed /private/tmp/sphinx-doc--pyt

    /usr/local/Cellar/sphinx-doc/4.3.1/libexec/bin/pip install -v --no-deps --no-binary :all: --ignore-installed /private/tmp/sphinx-doc--req

    /usr/local/Cellar/sphinx-doc/4.3.1/libexec/bin/pip install -v --no-deps --no-binary :all: --ignore-installed /private/tmp/sphinx-doc--sno

     /usr/local/Cellar/sphinx-doc/4.3.1/libexec/bin/pip install -v --no-deps --no-binary :all: --ignore-installed /private/tmp/sphinx-doc--sph

    /usr/local/Cellar/sphinx-doc/4.3.1/libexec/bin/pip install -v --no-deps --no-binary :all: --ignore-installed /private/tmp/sphinx-doc--sph

    /usr/local/Cellar/sphinx-doc/4.3.1/libexec/bin/pip install -v --no-deps --no-binary :all: --ignore-installed /private/tmp/sphinx-doc--sph

    /usr/local/Cellar/sphinx-doc/4.3.1/libexec/bin/pip install -v --no-deps --no-binary :all: --ignore-installed /private/tmp/sphinx-doc--sph

    /usr/local/Cellar/sphinx-doc/4.3.1/libexec/bin/pip install -v --no-deps --no-binary :all: --ignore-installed /private/tmp/sphinx-doc--sph

    /usr/local/Cellar/sphinx-doc/4.3.1/libexec/bin/pip install -v --no-deps --no-binary :all: --ignore-installed /private/tmp/sphinx-doc--sph

    /usr/local/Cellar/sphinx-doc/4.3.1/libexec/bin/pip install -v --no-deps --no-binary :all: --ignore-installed /private/tmp/sphinx-doc--url

    /usr/local/Cellar/sphinx-doc/4.3.1/libexec/bin/pip install -v --no-deps --no-binary :all: --ignore-installed /private/tmp/sphinx-doc-2022

    /usr/local/Cellar/sphinx-doc/4.3.1

uninstall:

    brew uninstall sphix-doc

The upstairs code uninstall the least `sphix-doc` version, roll back to

the old version. `python@3.10` depends on `sphix-doc`.

change functional soft link under `/usr/local/bin`

    cd /usr/local/bin && pwd && ls -al | grep "sphinx"

    ln -s ../Cellar/sphinx-doc/2.2.1/bin/sphinx-apidoc sphinx-apidoc

    ln -s ../Cellar/sphinx-doc/2.2.1/bin/sphinx-autogen sphinx-autogen

    ln -s ../Cellar/sphinx-doc/2.2.1/bin/sphinx-build sphinx-build

    ln -s ../Cellar/sphinx-doc/2.2.1/bin/sphinx-quickstart sphinx-quickstart

    pwd && ls -al | grep "sphinx"
python@3.9:
brew install python@3.9:

    install PYTHONAPPSDIR 
    
    --prefix=/usr/local/Cellar/python@3.9/3.9.9

    frameworkinstallextras PYTHONAPPSDIR
    
    --datarootdir=/usr/local/Cellar/python@3.9/3.9.9/share

    /usr/local/Cellar/python@3.9/3.9.9/bin/python3 -m venv /private/tmp/pythonA3.9-20220412-82687-1os90z/Python-3.9.9/whl_build

    /private/tmp/pythonA3.9-20220412-82687-1os90z/Python-3.9.9/whl_build/bin/pip3 install -v --no-deps --no-binary :all: --no-index --no-buil

    /private/tmp/pythonA3.9-20220412-82687-1os90z/Python-3.9.9/whl_build/bin/pip3 wheel -v --no-deps --no-binary :all: --no-index --no-build-

     /private/tmp/pythonA3.9-20220412-82687-1os90z/Python-3.9.9/whl_build/bin/pip3 wheel -v --no-deps --no-binary :all: --no-index --no-build-

     /private/tmp/pythonA3.9-20220412-82687-1os90z/Python-3.9.9/whl_build/bin/pip3 wheel -v --no-deps --no-binary :all: --no-index --no-build-

    Warning: These files were overwritten during the `brew link` step:

    /usr/local/Frameworks/Python.framework/Headers

    /usr/local/Frameworks/Python.framework/Python

    /usr/local/Frameworks/Python.framework/Resources

    /usr/local/Frameworks/Python.framework/Versions/Current

    They have been backed up to: /Users/yq/Library/Caches/Homebrew/Backup

    ==> /usr/local/Cellar/python@3.9/3.9.9/bin/python3 -m ensurepip

    ==> /usr/local/Cellar/python@3.9/3.9.9/bin/python3 -m pip install -v --no-deps --no-index --upgrade --isolated --target=/usr/local/lib/python

brew uninstall python@3.9:
    Error: Refusing to uninstall /usr/local/Cellar/python@3.9/3.9.9
    because it is required by cairo, glib, gobject-introspection, harfbuzz, macvim, meson, pango, pdf2htmlex, sphinx-doc and ttfautohint, which are currently installed.

1.uninstall `python@3.9`:

    brew uninstall --ignore-dependencies python@3.9
2.change functional target soft link source, roll back to `3.7.5`.

change soft link `python3` or `python@3` under `/usr/local/opt` and

`/usr/local/bin` point fo `/usr/local/Cellar` instead of

`/usr/local/opt`.
pkg-config:

    /usr/local/Cellar/pkg-config/0.29.2_3
gdbm:

    /usr/local/Cellar/gdbm/1.22
readline:

    /usr/local/Cellar/readline/8.1.1
sqlite:

    /usr/local/Cellar/sqlite/3.37.0
