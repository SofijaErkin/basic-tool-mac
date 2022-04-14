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

python@3.9

    Error: Refusing to uninstall /usr/local/Cellar/python@3.9/3.9.9
    because it is required by cairo, glib, gobject-introspection, harfbuzz, macvim, meson, pango, pdf2htmlex, sphinx-doc and ttfautohint, which are currently installed.

1.uninstall python@3.9:

    brew uninstall --ignore-dependencies python@3.9
2.change functional target soft link source:

change soft link `python3` or `python@3` under `/usr/local/opt` and

`/usr/local/bin` point fo `/usr/local/Cellar`.

sphix-doc:

    brew uninstall sphix-doc

The upstairs code uninstall the least `sphix-doc` version, roll back to

the old version. `python@3.10` depends on `sphix-doc`.

python@3.10:

    brew uninstall python@3.10

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

1.uninstall:

    brew uninstall --ignore-dependencies xz
And that terminal output:

    Uninstalling /usr/local/Cellar/xz/5.2.5... (95 files, 1.2MB)

    xz 5.2.4 is still installed.

    To remove all versions, run:

       brew uninstall --force xz
