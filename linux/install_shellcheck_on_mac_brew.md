# Mac brew install shellcheck

Do not use brew to install shellcheck on mac.

The below is that mac using brew install shellcheck.

✘ yq@yinNiece-2  ~  brew info shellcheck
shellcheck: stable 0.8.0, HEAD
Static analysis and lint tool, for (ba)sh scripts
<https://www.shellcheck.net/>
Not installed
From: <https://github.com/Homebrew/homebrew-core/blob/HEAD/Formula/shellcheck.rb>
License: GPL-3.0-or-later
==> Dependencies
Build: cabal-install ✘, ghc ✘, pandoc ✘
==> Options
--HEAD
 Install HEAD version
==> Analytics
install: 6,401 (30 days), 19,985 (90 days), 113,564 (365 days)
install-on-request: 6,045 (30 days), 18,661 (90 days), 108,811 (365 days)
build-error: 0 (30 days)
 yq@yinNiece-2  ~  brew search shellcheck
==> Formulae
shellcheck                                                             shellshare
 yq@yinNiece-2  ~  brew info cabal-install
cabal-install: stable 3.6.2.0, HEAD
Command-line interface for Cabal and Hackage
<https://www.haskell.org/cabal/>
Not installed
From: <https://github.com/Homebrew/homebrew-core/blob/HEAD/Formula/cabal-install.rb>
License: BSD-3-Clause
==> Dependencies
Required: ghc ✘
==> Options
--HEAD
 Install HEAD version
==> Analytics
install: 1,348 (30 days), 4,982 (90 days), 27,555 (365 days)
install-on-request: 782 (30 days), 2,712 (90 days), 16,104 (365 days)
build-error: 14 (30 days)
 yq@yinNiece-2  ~  brew info ghc
ghc: stable 8.10.7
Glorious Glasgow Haskell Compilation System
<https://haskell.org/ghc/>
Not installed
From: <https://github.com/Homebrew/homebrew-core/blob/HEAD/Formula/ghc.rb>
License: BSD-3-Clause and (LGPL-3.0-or-later or GPL-2.0-or-later)
==> Dependencies
Build: python@3.9 ✘, sphinx-doc ✘
==> Analytics
install: 2,419 (30 days), 8,480 (90 days), 53,463 (365 days)
install-on-request: 1,379 (30 days), 4,953 (90 days), 32,052 (365 days)
build-error: 11 (30 days)
 yq@yinNiece-2  ~  python --version
Python 2.7.16
 yq@yinNiece-2  ~  python3 --version
Python 3.7.5
 yq@yinNiece-2  ~  brew info sphinx-doc
sphinx-doc: stable 4.3.1 [keg-only]
Tool to create intelligent and beautiful documentation
<https://www.sphinx-doc.org/>
/usr/local/Cellar/sphinx-doc/2.1.2_1 (3,747 files, 53.4MB)
  Poured from bottle on 2019-10-24 at 12:08:02
/usr/local/Cellar/sphinx-doc/2.2.1 (4,965 files, 65.7MB)
  Built from source on 2019-12-14 at 16:07:19
From: <https://github.com/Homebrew/homebrew-core/blob/HEAD/Formula/sphinx-doc.rb>
License: BSD-2-Clause
==> Dependencies
Required: python@3.10 ✘
==> Caveats
sphinx-doc is keg-only, which means it was not symlinked into /usr/local,
because this formula is mainly used internally by other formulae.
Users are advised to use `pip` to install sphinx-doc.

==> Analytics
install: 28,974 (30 days), 83,338 (90 days), 518,043 (365 days)
install-on-request: 17,406 (30 days), 48,846 (90 days), 248,496 (365 days)
build-error: 266 (30 days)
 yq@yinNiece-2  ~  brew info python@3.10
python@3.10: stable 3.10.0 [keg-only]
Interpreted, interactive, object-oriented programming language
<https://www.python.org/>
Not installed
From: <https://github.com/Homebrew/homebrew-core/blob/HEAD/Formula/python@3.10.rb>
License: Python-2.0
==> Dependencies
Build: pkg-config ✘
Required: gdbm ✘, mpdecimal ✘, openssl@1.1 ✔, readline ✘, sqlite ✘, xz ✘
==> Caveats
Python has been installed as
  /usr/local/opt/python@3.10/bin/python3

Unversioned symlinks `python`, `python-config`, `pip` etc. pointing to
`python3`, `python3-config`, `pip3` etc., respectively, have been installed into
  /usr/local/opt/python@3.10/libexec/bin

You can install Python packages with
  /usr/local/opt/python@3.10/bin/pip3 install <package>
They will install into the site-package directory
  /usr/local/lib/python3.10/site-packages

tkinter is no longer included with this formula, but it is available separately:
  brew install python-tk@3.10

See: <https://docs.brew.sh/Homebrew-and-Python>

python@3.10 is keg-only, which means it was not symlinked into /usr/local,
because this is an alternate version of another formula.

==> Analytics
install: 271,353 (30 days), 984,491 (90 days), 1,923,968 (365 days)
install-on-request: 63,789 (30 days), 223,128 (90 days), 291,983 (365 days)
build-error: 341 (30 days)
 yq@yinNiece-2  ~  brew install shellcheck
Error:
  homebrew-core is a shallow clone.
  homebrew-cask is a shallow clone.
To `brew update`, first run:
  git -C /usr/local/Homebrew/Library/Taps/homebrew/homebrew-core fetch --unshallow
  git -C /usr/local/Homebrew/Library/Taps/homebrew/homebrew-cask fetch --unshallow
These commands may take a few minutes to run due to the large size of the repositories.
This restriction has been made on GitHub's request because updating shallow
clones is an extremely expensive operation due to the tree layout and traffic of
Homebrew/homebrew-core and Homebrew/homebrew-cask. We don't do this for you
automatically to avoid repeatedly performing an expensive unshallow operation in
CI systems (which should instead be fixed to not use shallow clones). Sorry for
the inconvenience!
Warning: You are using macOS 10.12.
We (and Apple) do not provide support for this old version.
You will encounter build failures with some formulae.
Please create pull requests instead of asking for help on Homebrew's GitHub,
Twitter or any other official channels. You are responsible for resolving
any issues you experience while you are running this
old version.

==> Downloading <https://pkgconfig.freedesktop.org/releases/pkg-config-0.29.2.tar.gz>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://raw.githubusercontent.com/Homebrew/formula-patches/03cf8088210822aa2c1ab544ed58ea04c897d9c4/libtool/configure-big_sur>
Already downloaded: /Users/yq/Library/Caches/Homebrew/downloads/195208ba31cadc265ea97bb8aad4e78caab1200daf4d855e6c839b5f987f92db--configure-big_sur.diff
==> Downloading <https://ftp.gnu.org/gnu/gdbm/gdbm-1.22.tar.gz>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://www.bytereef.org/software/mpdecimal/releases/mpdecimal-2.5.1.tar.gz>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://ftp.gnu.org/gnu/readline/readline-8.1-patches/readline81-001>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://ftp.gnu.org/gnu/readline/readline-8.1.tar.gz>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://sqlite.org/2021/sqlite-autoconf-3370000.tar.gz>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://downloads.sourceforge.net/project/lzmautils/xz-5.2.5.tar.gz>
==> Downloading from <https://cfhcable.dl.sourceforge.net/project/lzmautils/xz-5.2.5.tar.gz>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://www.bytereef.org/contrib/decimal.diff>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://files.pythonhosted.org/packages/cd/9a/6fff2cee92de1d34c0e8d48bb2ccedb0899eebb2cfe7955584b53bdaded7/setuptools-59.0.1>.
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://files.pythonhosted.org/packages/da/f6/c83229dcc3635cdeb51874184241a9508ada15d8baa337a41093fab58011/pip-21.3.1.tar.gz>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://files.pythonhosted.org/packages/4e/be/8139f127b4db2f79c8b117c80af56a3078cc4824b5b94250c7f81a70e03b/wheel-0.37.0.tar.g>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://www.python.org/ftp/python/3.9.9/Python-3.9.9.tar.xz>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://files.pythonhosted.org/packages/1e/5c/3d7b3d91a86d71faf5038c5d259ed36b5d05b7804648e2c43251d574a6e6/setuptools-58.2.0>.
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://files.pythonhosted.org/packages/52/e1/06c018197d8151383f66ebf6979d951995cf495629fc54149491f5d157d0/pip-21.2.4.tar.gz>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://files.pythonhosted.org/packages/4e/be/8139f127b4db2f79c8b117c80af56a3078cc4824b5b94250c7f81a70e03b/wheel-0.37.0.tar.g>
Already downloaded: /Users/yq/Library/Caches/Homebrew/downloads/b422c65318230977ec4777e9ab04c2ba86bd3fc75d0cfd96b8629b51b5e35866--wheel-0.37.0.tar.gz
==> Downloading <https://www.python.org/ftp/python/3.10.0/Python-3.10.0.tgz>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://files.pythonhosted.org/packages/cc/b4/ed8dcb0d67d5cfb7f83c4d5463a7614cb1d078ad7ae890c9143edebbf072/alabaster-0.7.12.t>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://files.pythonhosted.org/packages/17/e6/ec9aa6ac3d00c383a5731cc97ed7c619d3996232c977bb8326bcbb6c687e/Babel-2.9.1.tar.gz>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://files.pythonhosted.org/packages/6c/ae/d26450834f0acc9e3d1f74508da6df1551ceab6c2ce0766a593362d6d57f/certifi-2021.10.8>.
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://files.pythonhosted.org/packages/2f/39/5d8ff929409113e9ff402e405a7c7880ab1fa6f118a4ab72443976a01711/charset-normalizer>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://files.pythonhosted.org/packages/4c/17/559b4d020f4b46e0287a2eddf2d8ebf76318fd3bd495f1625414b052fdc9/docutils-0.17.1.ta>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://files.pythonhosted.org/packages/62/08/e3fc7c8161090f742f504f40b1bccbfc544d4a4e09eb774bf40aafce5436/idna-3.3.tar.gz>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://files.pythonhosted.org/packages/f6/27/b147794d43249e8303a06f427e407a090696b65b81045e36f8873d8d8a42/imagesize-1.3.0.ta>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://files.pythonhosted.org/packages/91/a5/429efc6246119e1e3fbf562c00187d04e83e54619249eb732bb423efa6c6/Jinja2-3.0.3.tar.g>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://files.pythonhosted.org/packages/bf/10/ff66fea6d1788c458663a84d88787bae15d45daa16f6b3ef33322a51fc7e/MarkupSafe-2.0.1.t>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://files.pythonhosted.org/packages/3d/fb/a70f636102045fc646656f2221c7fcdf92f7a9d71ba7c9875a949a58b3e8/numpydoc-1.1.0.tar>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://files.pythonhosted.org/packages/df/9e/d1a7217f69310c1db8fdf8ab396229f55a699ce34a203691794c5d1cad0c/packaging-21.3.tar>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://files.pythonhosted.org/packages/b7/b3/5cba26637fe43500d4568d0ee7b7362de1fb29c0e158d50b4b69e9a40422/Pygments-2.10.0.ta>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://files.pythonhosted.org/packages/ab/61/1a1613e3dcca483a7aa9d446cb4614e6425eb853b90db131c305bd9674cb/pyparsing-3.0.6.ta>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://files.pythonhosted.org/packages/e3/8e/1cde9d002f48a940b9d9d38820aaf444b229450c0854bdf15305ce4a3d1a/pytz-2021.3.tar.gz>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://files.pythonhosted.org/packages/e7/01/3569e0b535fb2e4a6c384bdbed00c55b9d78b5084e0fb7f4d0bf523d7670/requests-2.26.0.ta>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://files.pythonhosted.org/packages/44/7b/af302bebf22c749c56c9c3e8ae13190b5b5db37a33d9068652e8f73b7089/snowballstemmer-2>.
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://files.pythonhosted.org/packages/9f/01/ad9d4ebbceddbed9979ab4a89ddb78c9760e74e6757b1880f1b2760e8295/sphinxcontrib-appl>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://files.pythonhosted.org/packages/98/33/dc28393f16385f722c893cb55539c641c9aaec8d1bc1c15b69ce0ac2dbb3/sphinxcontrib-devh>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://files.pythonhosted.org/packages/eb/85/93464ac9bd43d248e7c74573d58a791d48c475230bcf000df2b2700b9027/sphinxcontrib-html>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://files.pythonhosted.org/packages/b2/e8/9ed3830aeed71f17c026a07a5097edcf44b692850ef215b161b8ad875729/sphinxcontrib-jsma>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://files.pythonhosted.org/packages/b1/8e/c4846e59f38a5f2b4a0e3b27af38f2fcf904d4bfd82095bf92de0b114ebd/sphinxcontrib-qthe>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://files.pythonhosted.org/packages/b5/72/835d6fadb9e5d02304cf39b18f93d227cd93abd3c41ebf58e6853eeb1455/sphinxcontrib-seri>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://files.pythonhosted.org/packages/80/be/3ee43b6c5757cabea19e75b8f46eaf05a2f5144107d7db48c7cf3a864f73/urllib3-1.26.7.tar>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://files.pythonhosted.org/packages/2b/73/a12887680688cc9a2ca0efb404fa2ee2be768f9a9143b758e53fef5db858/Sphinx-4.3.1.tar.g>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://ftp.gnu.org/gnu/gmp/gmp-6.2.1.tar.xz>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://downloads.haskell.org/~ghc/8.10.7/ghc-8.10.7-x86_64-apple-darwin.tar.xz>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://downloads.haskell.org/~ghc/8.10.7/ghc-8.10.7-src.tar.xz>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://downloads.haskell.org/~cabal/cabal-install-3.2.0.0/cabal-install-3.2.0.0-x86_64-apple-darwin17.7.0.tar.xz>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://hackage.haskell.org/package/cabal-install-3.6.2.0/cabal-install-3.6.2.0.tar.gz>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://hackage.haskell.org/package/pandoc-2.16.2/pandoc-2.16.2.tar.gz>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://github.com/koalaman/shellcheck/archive/v0.8.0.tar.gz>
==> Downloading from <https://codeload.github.com/koalaman/shellcheck/tar.gz/refs/tags/v0.8.0>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
Warning: Your Xcode (8.3.3) is outdated.
Please update to Xcode 9.2 (or delete it).
Xcode can be updated from the App Store.

==> Installing dependencies for shellcheck: pkg-config, gdbm, mpdecimal, readline, sqlite, xz, python@3.9, python@3.10, sphinx-doc, ghc, cabal-install and pandoc
==> Installing shellcheck dependency: pkg-config
Warning: Your Xcode (8.3.3) is outdated.
Please update to Xcode 9.2 (or delete it).
Xcode can be updated from the App Store.

==> ./configure --prefix=/usr/local/Cellar/pkg-config/0.29.2_3 --disable-host-tool --with-internal-glib --with-pc-path=/usr/local/lib/pkgconf
==> make
==> make install
🍺  /usr/local/Cellar/pkg-config/0.29.2_3: 11 files, 628.7KB, built in 1 minute 24 seconds
==> Installing shellcheck dependency: gdbm
Warning: Your Xcode (8.3.3) is outdated.
Please update to Xcode 9.2 (or delete it).
Xcode can be updated from the App Store.

==> Patching
==> Applying configure-big_sur.diff
patching file configure
Hunk #1 succeeded at 7876 (offset -857 lines).
==> ./configure --enable-libgdbm-compat --without-readline --prefix=/usr/local/Cellar/gdbm/1.22
==> make install
🍺  /usr/local/Cellar/gdbm/1.22: 24 files, 801.8KB, built in 27 seconds
==> Installing shellcheck dependency: mpdecimal
Warning: Your Xcode (8.3.3) is outdated.
Please update to Xcode 9.2 (or delete it).
Xcode can be updated from the App Store.

==> ./configure --prefix=/usr/local/Cellar/mpdecimal/2.5.1
==> make
==> make install
🍺  /usr/local/Cellar/mpdecimal/2.5.1: 71 files, 2MB, built in 16 seconds
==> Installing shellcheck dependency: readline
Warning: Your Xcode (8.3.3) is outdated.
Please update to Xcode 9.2 (or delete it).
Xcode can be updated from the App Store.

==> Patching
==> Applying readline81-001
patching file bind.c
patching file patchlevel
==> ./configure --prefix=/usr/local/Cellar/readline/8.1.1
==> make install
🍺  /usr/local/Cellar/readline/8.1.1: 48 files, 1.6MB, built in 25 seconds
==> Installing shellcheck dependency: sqlite
Warning: Your Xcode (8.3.3) is outdated.
Please update to Xcode 9.2 (or delete it).
Xcode can be updated from the App Store.

==> ./configure --prefix=/usr/local/Cellar/sqlite/3.37.0 --enable-dynamic-extensions --enable-readline --disable-editline --enable-session
==> make install
🍺  /usr/local/Cellar/sqlite/3.37.0: 11 files, 4.2MB, built in 1 minute 7 seconds
==> Installing shellcheck dependency: xz
Warning: Your Xcode (8.3.3) is outdated.
Please update to Xcode 9.2 (or delete it).
Xcode can be updated from the App Store.

==> ./configure --prefix=/usr/local/Cellar/xz/5.2.5
==> make check
==> make install
🍺  /usr/local/Cellar/xz/5.2.5: 95 files, 1.2MB, built in 1 minute 1 second
==> Installing shellcheck dependency: python@3.9
Warning: Your Xcode (8.3.3) is outdated.
Please update to Xcode 9.2 (or delete it).
Xcode can be updated from the App Store.

==> Patching
==> Applying decimal.diff
patching file Modules/_decimal/_decimal.c
Hunk #1 succeeded at 3279 (offset -1 lines).
Hunk #2 succeeded at 3288 (offset -1 lines).
patching file setup.py
Hunk #1 succeeded at 2203 (offset 7 lines).
==> ./configure --prefix=/usr/local/Cellar/python@3.9/3.9.9 --enable-ipv6 --datarootdir=/usr/local/Cellar/python@3.9/3.9.9/share --datadir=/u
==> make
==> make install PYTHONAPPSDIR=/usr/local/Cellar/python@3.9/3.9.9
==> make frameworkinstallextras PYTHONAPPSDIR=/usr/local/Cellar/python@3.9/3.9.9/share/python@3.9
==> /usr/local/Cellar/python@3.9/3.9.9/bin/python3 -m venv /private/tmp/pythonA3.9-20220412-82687-1os90z/Python-3.9.9/whl_build
==> /private/tmp/pythonA3.9-20220412-82687-1os90z/Python-3.9.9/whl_build/bin/pip3 install -v --no-deps --no-binary :all: --no-index --no-buil
==> /private/tmp/pythonA3.9-20220412-82687-1os90z/Python-3.9.9/whl_build/bin/pip3 wheel -v --no-deps --no-binary :all: --no-index --no-build-
==> /private/tmp/pythonA3.9-20220412-82687-1os90z/Python-3.9.9/whl_build/bin/pip3 wheel -v --no-deps --no-binary :all: --no-index --no-build-
==> /private/tmp/pythonA3.9-20220412-82687-1os90z/Python-3.9.9/whl_build/bin/pip3 wheel -v --no-deps --no-binary :all: --no-index --no-build-
Warning: These files were overwritten during the `brew link` step:
/usr/local/Frameworks/Python.framework/Headers
/usr/local/Frameworks/Python.framework/Python
/usr/local/Frameworks/Python.framework/Resources
/usr/local/Frameworks/Python.framework/Versions/Current

They have been backed up to: /Users/yq/Library/Caches/Homebrew/Backup
==> /usr/local/Cellar/python@3.9/3.9.9/bin/python3 -m ensurepip
==> /usr/local/Cellar/python@3.9/3.9.9/bin/python3 -m pip install -v --no-deps --no-index --upgrade --isolated --target=/usr/local/lib/python
==> Summary
🍺  /usr/local/Cellar/python@3.9/3.9.9: 7,839 files, 116MB, built in 6 minutes 16 seconds
==> Installing shellcheck dependency: python@3.10
Warning: Your Xcode (8.3.3) is outdated.
Please update to Xcode 9.2 (or delete it).
Xcode can be updated from the App Store.

==> ./configure --prefix=/usr/local/Cellar/python@3.10/3.10.0_2 --enable-ipv6 --datarootdir=/usr/local/Cellar/python@3.10/3.10.0_2/share --da
==> make
==> make install PYTHONAPPSDIR=/usr/local/Cellar/python@3.10/3.10.0_2
==> make frameworkinstallextras PYTHONAPPSDIR=/usr/local/Cellar/python@3.10/3.10.0_2/share/python@3.10
==> /usr/local/Cellar/python@3.10/3.10.0_2/bin/python3 -m venv /private/tmp/pythonA3.10-20220412-96046-12laipd/Python-3.10.0/whl_build
==> /private/tmp/pythonA3.10-20220412-96046-12laipd/Python-3.10.0/whl_build/bin/pip3 install -v --no-deps --no-binary :all: --no-index --no-b
==> /private/tmp/pythonA3.10-20220412-96046-12laipd/Python-3.10.0/whl_build/bin/pip3 wheel -v --no-deps --no-binary :all: --no-index --no-bui
==> /private/tmp/pythonA3.10-20220412-96046-12laipd/Python-3.10.0/whl_build/bin/pip3 wheel -v --no-deps --no-binary :all: --no-index --no-bui
==> /private/tmp/pythonA3.10-20220412-96046-12laipd/Python-3.10.0/whl_build/bin/pip3 wheel -v --no-deps --no-binary :all: --no-index --no-bui
==> /usr/local/Cellar/python@3.10/3.10.0_2/bin/python3 -m ensurepip
==> /usr/local/Cellar/python@3.10/3.10.0_2/bin/python3 -m pip install -v --no-deps --no-index --upgrade --isolated --target=/usr/local/lib/py
🍺  /usr/local/Cellar/python@3.10/3.10.0_2: 7,955 files, 117.9MB, built in 6 minutes 4 seconds
==> Installing shellcheck dependency: sphinx-doc
Warning: Your Xcode (8.3.3) is outdated.
Please update to Xcode 9.2 (or delete it).
Xcode can be updated from the App Store.

==> python3.10 -m venv --system-site-packages /usr/local/Cellar/sphinx-doc/4.3.1/libexec
==> /usr/local/Cellar/sphinx-doc/4.3.1/libexec/bin/pip install -v --no-deps --no-binary :all: --ignore-installed /private/tmp/sphinx-doc--ala
==> /usr/local/Cellar/sphinx-doc/4.3.1/libexec/bin/pip install -v --no-deps --no-binary :all: --ignore-installed /private/tmp/sphinx-doc--Bab
==> /usr/local/Cellar/sphinx-doc/4.3.1/libexec/bin/pip install -v --no-deps --no-binary :all: --ignore-installed /private/tmp/sphinx-doc--cer
==> /usr/local/Cellar/sphinx-doc/4.3.1/libexec/bin/pip install -v --no-deps --no-binary :all: --ignore-installed /private/tmp/sphinx-doc--cha
==> /usr/local/Cellar/sphinx-doc/4.3.1/libexec/bin/pip install -v --no-deps --no-binary :all: --ignore-installed /private/tmp/sphinx-doc--doc
==> /usr/local/Cellar/sphinx-doc/4.3.1/libexec/bin/pip install -v --no-deps --no-binary :all: --ignore-installed /private/tmp/sphinx-doc--idn
==> /usr/local/Cellar/sphinx-doc/4.3.1/libexec/bin/pip install -v --no-deps --no-binary :all: --ignore-installed /private/tmp/sphinx-doc--ima
==> /usr/local/Cellar/sphinx-doc/4.3.1/libexec/bin/pip install -v --no-deps --no-binary :all: --ignore-installed /private/tmp/sphinx-doc--Jin
==> /usr/local/Cellar/sphinx-doc/4.3.1/libexec/bin/pip install -v --no-deps --no-binary :all: --ignore-installed /private/tmp/sphinx-doc--Mar
==> /usr/local/Cellar/sphinx-doc/4.3.1/libexec/bin/pip install -v --no-deps --no-binary :all: --ignore-installed /private/tmp/sphinx-doc--num
==> /usr/local/Cellar/sphinx-doc/4.3.1/libexec/bin/pip install -v --no-deps --no-binary :all: --ignore-installed /private/tmp/sphinx-doc--pac
==> /usr/local/Cellar/sphinx-doc/4.3.1/libexec/bin/pip install -v --no-deps --no-binary :all: --ignore-installed /private/tmp/sphinx-doc--Pyg
==> /usr/local/Cellar/sphinx-doc/4.3.1/libexec/bin/pip install -v --no-deps --no-binary :all: --ignore-installed /private/tmp/sphinx-doc--pyp
==> /usr/local/Cellar/sphinx-doc/4.3.1/libexec/bin/pip install -v --no-deps --no-binary :all: --ignore-installed /private/tmp/sphinx-doc--pyt
==> /usr/local/Cellar/sphinx-doc/4.3.1/libexec/bin/pip install -v --no-deps --no-binary :all: --ignore-installed /private/tmp/sphinx-doc--req
==> /usr/local/Cellar/sphinx-doc/4.3.1/libexec/bin/pip install -v --no-deps --no-binary :all: --ignore-installed /private/tmp/sphinx-doc--sno
==> /usr/local/Cellar/sphinx-doc/4.3.1/libexec/bin/pip install -v --no-deps --no-binary :all: --ignore-installed /private/tmp/sphinx-doc--sph
==> /usr/local/Cellar/sphinx-doc/4.3.1/libexec/bin/pip install -v --no-deps --no-binary :all: --ignore-installed /private/tmp/sphinx-doc--sph
==> /usr/local/Cellar/sphinx-doc/4.3.1/libexec/bin/pip install -v --no-deps --no-binary :all: --ignore-installed /private/tmp/sphinx-doc--sph
==> /usr/local/Cellar/sphinx-doc/4.3.1/libexec/bin/pip install -v --no-deps --no-binary :all: --ignore-installed /private/tmp/sphinx-doc--sph
==> /usr/local/Cellar/sphinx-doc/4.3.1/libexec/bin/pip install -v --no-deps --no-binary :all: --ignore-installed /private/tmp/sphinx-doc--sph
==> /usr/local/Cellar/sphinx-doc/4.3.1/libexec/bin/pip install -v --no-deps --no-binary :all: --ignore-installed /private/tmp/sphinx-doc--sph
==> /usr/local/Cellar/sphinx-doc/4.3.1/libexec/bin/pip install -v --no-deps --no-binary :all: --ignore-installed /private/tmp/sphinx-doc--url
==> /usr/local/Cellar/sphinx-doc/4.3.1/libexec/bin/pip install -v --no-deps --no-binary :all: --ignore-installed /private/tmp/sphinx-doc-2022
🍺  /usr/local/Cellar/sphinx-doc/4.3.1: 5,241 files, 69.8MB, built in 1 minute 28 seconds
==> Installing shellcheck dependency: ghc
Warning: Your Xcode (8.3.3) is outdated.
Please update to Xcode 9.2 (or delete it).
Xcode can be updated from the App Store.

==> ./configure --prefix=/usr/local/Cellar/ghc/8.10.7_1/libexec/integer-gmp --with-pic --disable-shared --build=core2-apple-darwin16
==> make
==> make install
==> ./configure --prefix=/private/tmp/ghc-20220412-10078-ic43wy/ghc-8.10.7/binary --with-gmp-includes=/usr/local/Cellar/ghc/8.10.7_1/libexec/
==> make install
==> ./configure --prefix=/usr/local/Cellar/ghc/8.10.7_1 --with-gmp-includes=/usr/local/Cellar/ghc/8.10.7_1/libexec/integer-gmp/include --with
==> make
