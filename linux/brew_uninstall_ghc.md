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

sphix-doc:

    brew uninstall sphix-doc

The upstairs code uninstall the least sphix-doc version, roll back to

the old version. python@3.10 depends on sphix-doc.

python@3.10:

    brew uninstall python@3.10

mpdecimal:

    brew uninstall mpdecimal
