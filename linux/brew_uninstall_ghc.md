# brew uninstall ghc

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

    brew uninstall mpdecimal
xz:

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

    brew uninstall python@3.10
sphix-doc:

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

    Error: Refusing to uninstall /usr/local/Cellar/python@3.9/3.9.9
    because it is required by cairo, glib, gobject-introspection, harfbuzz, macvim, meson, pango, pdf2htmlex, sphinx-doc and ttfautohint, which are currently installed.

1.uninstall `python@3.9`:

    brew uninstall --ignore-dependencies python@3.9
2.change functional target soft link source, roll back to `3.7.5`.

change soft link `python3` or `python@3` under `/usr/local/opt` and

`/usr/local/bin` point fo `/usr/local/Cellar` instead of

`/usr/local/opt`.
