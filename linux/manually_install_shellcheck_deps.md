# Manually install Shellcheck deps Logs

brew install mpdecimal
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

==> Downloading <https://www.bytereef.org/software/mpdecimal/releases/mpdecimal-2.5.1.tar.gz>
Already downloaded: /Users/yq/Library/Caches/Homebrew/downloads/3780579ce2767fd3d4f759761f15093463bbfd9d9dd9bec07a374c73e6f9dd6a--mpdecimal-2.5.1.tar.gz
Warning: Your Xcode (8.3.3) is outdated.
Please update to Xcode 9.2 (or delete it).
Xcode can be updated from the App Store.

==> ./configure --prefix=/usr/local/Cellar/mpdecimal/2.5.1
==> make
==> make install
🍺  /usr/local/Cellar/mpdecimal/2.5.1: 71 files, 2MB, built in 14 seconds
==> `brew cleanup` has not been run in the last 30 days, running now...
Disable this behaviour by setting HOMEBREW_NO_INSTALL_CLEANUP.
Hide these hints with HOMEBREW_NO_ENV_HINTS (see `man brew`).
Removing: /Users/yq/Library/Caches/Homebrew/ca-certificates--2021-10-26... (117.6KB)
Removing: /Users/yq/Library/Caches/Homebrew/cmake--3.22.0.tar.gz... (9.3MB)
Removing: /usr/local/Cellar/gdbm/1.18.1... (20 files, 586.8KB)
Removing: /Users/yq/Library/Caches/Homebrew/gdbm--patch--35acd6aebc19843f1a2b3a63e880baceb0f5278ab1ace661e57a502d9d78c93c.diff... (960B)
Removing: /Users/yq/Library/Caches/Homebrew/openssl@1.1--1.1.1l.tar.gz... (9.4MB)
Removing: /Users/yq/Library/Caches/Homebrew/openssl@1.1--patch--a66dcd4a3a291858deefaf260ffd8f2f55da953724e7a14db9c4523d8b7ef383.patch... (1.2KB)
Removing: /Users/yq/Library/Caches/Homebrew/openssl@1.1--patch--dd5498c0910c0ae91738fe8e796f4deb4767b08217c1a859fe390147f24809c6.patch... (2KB)
Removing: /Users/yq/Library/Caches/Homebrew/pcre--8.45.tar.bz2... (1.5MB)
Removing: /Users/yq/Library/Caches/Homebrew/pcre--patch--35acd6aebc19843f1a2b3a63e880baceb0f5278ab1ace661e57a502d9d78c93c.diff... (960B)
Removing: /usr/local/Cellar/pkg-config/0.29.2... (11 files, 627.2KB)
Removing: /usr/local/Cellar/readline/8.0.1... (48 files, 1.5MB)
Removing: /usr/local/Cellar/sqlite/3.30.1... (11 files, 3.9MB)
Removing: /Users/yq/Library/Caches/Homebrew/zlib--1.2.11... (149.8KB)
Removing: /Users/yq/Library/Caches/Homebrew/all_commands_list.txt... (963B)
Removing: /Users/yq/Library/Caches/Homebrew/ca-certificates_bottle_manifest--2021-10-26... (1.8KB)
Removing: /Users/yq/Library/Caches/Homebrew/descriptions.json... (350.0KB)
Removing: /Users/yq/Library/Caches/Homebrew/external_commands_list.txt... (57B)
Removing: /Users/yq/Library/Caches/Homebrew/mysql@5.7--5.7.36.tar.gz... (50.5MB)
Removing: /Users/yq/Library/Caches/Homebrew/portable-ruby-2.6.8.yosemite.bottle.tar.gz... (8.8MB)
Removing: /Users/yq/Library/Caches/Homebrew/zlib_bottle_manifest--1.2.11... (9.7KB)
Removing: /Users/yq/Library/Logs/Homebrew/ca-certificates... (68B)
Removing: /Users/yq/Library/Logs/Homebrew/cmake... (22 files, 5.2MB)
Removing: /Users/yq/Library/Logs/Homebrew/mysql@5.7... (10 files, 12.2MB)
Removing: /Users/yq/Library/Logs/Homebrew/nginx... (6 files, 148.4KB)
Removing: /Users/yq/Library/Logs/Homebrew/openssl@1.1... (7 files, 3.2MB)
Removing: /Users/yq/Library/Logs/Homebrew/pcre... (8 files, 252.7KB)
Removing: /Users/yq/Library/Logs/Homebrew/zlib... (68B)
Error: Permission denied @ apply2files - /usr/local/lib/docker/cli-plugins

Fixed upstairs Error:

    sudo chown -R $(whoami) $(brew --prefix)/*

brew install xz
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

==> Downloading <https://downloads.sourceforge.net/project/lzmautils/xz-5.2.5.tar.gz>
Already downloaded: /Users/yq/Library/Caches/Homebrew/downloads/a13e2dce533a3dcb05b2f1b86fc45eac1f6ebf737b54ef7d3089994649d28aa8--xz-5.2.5.tar.gz
Warning: Your Xcode (8.3.3) is outdated.
Please update to Xcode 9.2 (or delete it).
Xcode can be updated from the App Store.

==> ./configure --prefix=/usr/local/Cellar/xz/5.2.5
==> make check
==> make install
Error: The `brew link` step did not complete successfully
The formula built, but is not symlinked into /usr/local
Could not symlink bin/lzcat
Target /usr/local/bin/lzcat
is a symlink belonging to xz. You can unlink it:
  brew unlink xz

To force the link and overwrite all conflicting files:
  brew link --overwrite xz

To list all files that would be deleted:
  brew link --overwrite --dry-run xz

Possible conflicting files are:
/usr/local/bin/lzcat -> /usr/local/Cellar/xz/5.2.4/bin/lzcat
/usr/local/bin/lzcmp -> /usr/local/Cellar/xz/5.2.4/bin/lzcmp
/usr/local/bin/lzdiff -> /usr/local/Cellar/xz/5.2.4/bin/lzdiff
/usr/local/bin/lzegrep -> /usr/local/Cellar/xz/5.2.4/bin/lzegrep
/usr/local/bin/lzfgrep -> /usr/local/Cellar/xz/5.2.4/bin/lzfgrep
/usr/local/bin/lzgrep -> /usr/local/Cellar/xz/5.2.4/bin/lzgrep
/usr/local/bin/lzless -> /usr/local/Cellar/xz/5.2.4/bin/lzless
/usr/local/bin/lzma -> /usr/local/Cellar/xz/5.2.4/bin/lzma
/usr/local/bin/lzmadec -> /usr/local/Cellar/xz/5.2.4/bin/lzmadec
/usr/local/bin/lzmainfo -> /usr/local/Cellar/xz/5.2.4/bin/lzmainfo
/usr/local/bin/lzmore -> /usr/local/Cellar/xz/5.2.4/bin/lzmore
/usr/local/bin/unlzma -> /usr/local/Cellar/xz/5.2.4/bin/unlzma
/usr/local/bin/unxz -> /usr/local/Cellar/xz/5.2.4/bin/unxz
/usr/local/bin/xz -> /usr/local/Cellar/xz/5.2.4/bin/xz
/usr/local/bin/xzcat -> /usr/local/Cellar/xz/5.2.4/bin/xzcat
/usr/local/bin/xzcmp -> /usr/local/Cellar/xz/5.2.4/bin/xzcmp
/usr/local/bin/xzdec -> /usr/local/Cellar/xz/5.2.4/bin/xzdec
/usr/local/bin/xzdiff -> /usr/local/Cellar/xz/5.2.4/bin/xzdiff
/usr/local/bin/xzegrep -> /usr/local/Cellar/xz/5.2.4/bin/xzegrep
/usr/local/bin/xzfgrep -> /usr/local/Cellar/xz/5.2.4/bin/xzfgrep
/usr/local/bin/xzgrep -> /usr/local/Cellar/xz/5.2.4/bin/xzgrep
/usr/local/bin/xzless -> /usr/local/Cellar/xz/5.2.4/bin/xzless
/usr/local/bin/xzmore -> /usr/local/Cellar/xz/5.2.4/bin/xzmore
==> Summary
🍺  /usr/local/Cellar/xz/5.2.5: 95 files, 1.2MB, built in 1 minute
==> Running `brew cleanup xz`...
Disable this behaviour by setting HOMEBREW_NO_INSTALL_CLEANUP.
Hide these hints with HOMEBREW_NO_ENV_HINTS (see `man brew`).
Removing: /usr/local/Cellar/xz/5.2.4... (92 files, 1MB)
==> Upgrading 11 dependents:
Disable this behaviour by setting HOMEBREW_NO_INSTALLED_DEPENDENTS_CHECK.
Hide these hints with HOMEBREW_NO_ENV_HINTS (see `man brew`).
glib 2.62.2 -> 2.70.1, cairo 1.16.0_2 -> 1.16.0_5, gobject-introspection 1.62.0 -> 1.70.0_2, harfbuzz 2.6.2 -> 3.1.2, macvim 8.1-159 -> 8.2-171_1, meson 0.52.0 -> 0.60.2, pango 1.44.6 -> 1.48.10, pdf2htmlex 0.14.6_22 -> 0.14.6_24, python@3.9 3.9.9, sphinx-doc 4.3.1, ttfautohint 1.8.3 -> 1.8.4
==> Downloading <https://files.pythonhosted.org/packages/1e/5c/3d7b3d91a86d71faf5038c5d259ed36b5d05b7804648e2c43251d574a6e6/setuptools-58.2.0.tar.gz>
Already downloaded: /Users/yq/Library/Caches/Homebrew/downloads/bb15490e416afee6327fe7f88a8f90398c7d68537c4b483630d510ed20c44970--setuptools-58.2.0.tar.gz
==> Downloading <https://files.pythonhosted.org/packages/52/e1/06c018197d8151383f66ebf6979d951995cf495629fc54149491f5d157d0/pip-21.2.4.tar.gz>
Already downloaded: /Users/yq/Library/Caches/Homebrew/downloads/54a71f28dcacd8169fcdd00b9548c58cd351535f89bef3f0421906b2b90fd428--pip-21.2.4.tar.gz
==> Downloading <https://files.pythonhosted.org/packages/4e/be/8139f127b4db2f79c8b117c80af56a3078cc4824b5b94250c7f81a70e03b/wheel-0.37.0.tar.gz>
Already downloaded: /Users/yq/Library/Caches/Homebrew/downloads/b422c65318230977ec4777e9ab04c2ba86bd3fc75d0cfd96b8629b51b5e35866--wheel-0.37.0.tar.gz
==> Downloading <https://www.python.org/ftp/python/3.10.0/Python-3.10.0.tgz>
Already downloaded: /Users/yq/Library/Caches/Homebrew/downloads/d3254f76a28c23d0389cbd7a1a2e62f0e5baf3dca6352fd3b611dca277a4f831--Python-3.10.0.tgz
==> Downloading <https://files.pythonhosted.org/packages/cc/b4/ed8dcb0d67d5cfb7f83c4d5463a7614cb1d078ad7ae890c9143edebbf072/alabaster-0.7.12.tar.gz>
Already downloaded: /Users/yq/Library/Caches/Homebrew/downloads/6fe7e7241e703f9e3f03f1600efd5a1f03bb466b8bc79871d35be3da87239d71--alabaster-0.7.12.tar.gz
==> Downloading <https://files.pythonhosted.org/packages/17/e6/ec9aa6ac3d00c383a5731cc97ed7c619d3996232c977bb8326bcbb6c687e/Babel-2.9.1.tar.gz>
Already downloaded: /Users/yq/Library/Caches/Homebrew/downloads/773270888da4f49e8e35430414de0b41bf45c58e7f81c01af2e2a3d84dc323c7--Babel-2.9.1.tar.gz
==> Downloading <https://files.pythonhosted.org/packages/6c/ae/d26450834f0acc9e3d1f74508da6df1551ceab6c2ce0766a593362d6d57f/certifi-2021.10.8.tar.gz>
Already downloaded: /Users/yq/Library/Caches/Homebrew/downloads/86e8e1766c3528acc8bf98587c92ef116261087678a6158e4719100a9a30f3ac--certifi-2021.10.8.tar.gz
==> Downloading <https://files.pythonhosted.org/packages/2f/39/5d8ff929409113e9ff402e405a7c7880ab1fa6f118a4ab72443976a01711/charset-normalizer-2.0.8.tar.gz>
Already downloaded: /Users/yq/Library/Caches/Homebrew/downloads/96942c6091bb82516708395137048f556c0e6cf2a9faa2e7e9f4aea0a1121d5b--charset-normalizer-2.0.8.tar.gz
==> Downloading <https://files.pythonhosted.org/packages/4c/17/559b4d020f4b46e0287a2eddf2d8ebf76318fd3bd495f1625414b052fdc9/docutils-0.17.1.tar.gz>
Already downloaded: /Users/yq/Library/Caches/Homebrew/downloads/7157669020567220de78f0012502d15fb77ea995c212edf5c82c0d482777f6e9--docutils-0.17.1.tar.gz
==> Downloading <https://files.pythonhosted.org/packages/62/08/e3fc7c8161090f742f504f40b1bccbfc544d4a4e09eb774bf40aafce5436/idna-3.3.tar.gz>
Already downloaded: /Users/yq/Library/Caches/Homebrew/downloads/b61bd327cd7a0ba298cc7cdb6f314f028e8547bef2f814156ce50702a6faf562--idna-3.3.tar.gz
==> Downloading <https://files.pythonhosted.org/packages/f6/27/b147794d43249e8303a06f427e407a090696b65b81045e36f8873d8d8a42/imagesize-1.3.0.tar.gz>
Already downloaded: /Users/yq/Library/Caches/Homebrew/downloads/936eadf6c2f69cf2c492f0e8cc3cb24ce8cf25961c5f8c817c9818eedfa84bac--imagesize-1.3.0.tar.gz
==> Downloading <https://files.pythonhosted.org/packages/91/a5/429efc6246119e1e3fbf562c00187d04e83e54619249eb732bb423efa6c6/Jinja2-3.0.3.tar.gz>
Already downloaded: /Users/yq/Library/Caches/Homebrew/downloads/9459b28e4118d509c4c03ad0168a5c125d5446c824380fd5bb36050751f4f465--Jinja2-3.0.3.tar.gz
==> Downloading <https://files.pythonhosted.org/packages/bf/10/ff66fea6d1788c458663a84d88787bae15d45daa16f6b3ef33322a51fc7e/MarkupSafe-2.0.1.tar.gz>
Already downloaded: /Users/yq/Library/Caches/Homebrew/downloads/2f2488b4acce3f0f78d8d8a234cbcc0306b6789e9b18ada8269380a59131b350--MarkupSafe-2.0.1.tar.gz
==> Downloading <https://files.pythonhosted.org/packages/3d/fb/a70f636102045fc646656f2221c7fcdf92f7a9d71ba7c9875a949a58b3e8/numpydoc-1.1.0.tar.gz>
Already downloaded: /Users/yq/Library/Caches/Homebrew/downloads/cd83174980fca91e1cb0e06a81d7aac39564f4679d44e2e8ff6695365d22c401--numpydoc-1.1.0.tar.gz
==> Downloading <https://files.pythonhosted.org/packages/df/9e/d1a7217f69310c1db8fdf8ab396229f55a699ce34a203691794c5d1cad0c/packaging-21.3.tar.gz>
Already downloaded: /Users/yq/Library/Caches/Homebrew/downloads/4e5cc302ac2525105e67cdfb598d16c5dd68105f5501546cc69887ddb63d6676--packaging-21.3.tar.gz
==> Downloading <https://files.pythonhosted.org/packages/b7/b3/5cba26637fe43500d4568d0ee7b7362de1fb29c0e158d50b4b69e9a40422/Pygments-2.10.0.tar.gz>
Already downloaded: /Users/yq/Library/Caches/Homebrew/downloads/9df312922914cd5d5e9762101bcf547588e9018c31b1f7b7b39bb0781874ca48--Pygments-2.10.0.tar.gz
==> Downloading <https://files.pythonhosted.org/packages/ab/61/1a1613e3dcca483a7aa9d446cb4614e6425eb853b90db131c305bd9674cb/pyparsing-3.0.6.tar.gz>
Already downloaded: /Users/yq/Library/Caches/Homebrew/downloads/2b06c6a32c0063a0027222c6ca4bfcf47c88d002a300c53e708426e99c30ee44--pyparsing-3.0.6.tar.gz
==> Downloading <https://files.pythonhosted.org/packages/e3/8e/1cde9d002f48a940b9d9d38820aaf444b229450c0854bdf15305ce4a3d1a/pytz-2021.3.tar.gz>
Already downloaded: /Users/yq/Library/Caches/Homebrew/downloads/9add310b2ca5f5d8c452e8ff4eac17279970e78fb63449e5642adbf15f8a4f46--pytz-2021.3.tar.gz
==> Downloading <https://files.pythonhosted.org/packages/e7/01/3569e0b535fb2e4a6c384bdbed00c55b9d78b5084e0fb7f4d0bf523d7670/requests-2.26.0.tar.gz>
Already downloaded: /Users/yq/Library/Caches/Homebrew/downloads/4cd06743d2c4e2ef5c4cb98dc966eecae498b97d1714cbba594d4f76d0d5cc7f--requests-2.26.0.tar.gz
==> Downloading <https://files.pythonhosted.org/packages/44/7b/af302bebf22c749c56c9c3e8ae13190b5b5db37a33d9068652e8f73b7089/snowballstemmer-2.2.0.tar.gz>
Already downloaded: /Users/yq/Library/Caches/Homebrew/downloads/6f0f9e7dd25ec5df72d05ac205b8c1a7bef415fb1e376aa302d45f0d90f36c0d--snowballstemmer-2.2.0.tar.gz
==> Downloading <https://files.pythonhosted.org/packages/9f/01/ad9d4ebbceddbed9979ab4a89ddb78c9760e74e6757b1880f1b2760e8295/sphinxcontrib-applehelp-1.0.2.tar.g>
Already downloaded: /Users/yq/Library/Caches/Homebrew/downloads/1570c2b2bf9ce0b9c5e994a7ada997dff2474f85f5a7db7f3d27644d82bdf0e7--sphinxcontrib-applehelp-1.0.2.tar.gz
==> Downloading <https://files.pythonhosted.org/packages/98/33/dc28393f16385f722c893cb55539c641c9aaec8d1bc1c15b69ce0ac2dbb3/sphinxcontrib-devhelp-1.0.2.tar.gz>
Already downloaded: /Users/yq/Library/Caches/Homebrew/downloads/857c58712c97e9ef60252ece34766e3701540fa8bc51528ce47b4cc90dc1d90c--sphinxcontrib-devhelp-1.0.2.tar.gz
==> Downloading <https://files.pythonhosted.org/packages/eb/85/93464ac9bd43d248e7c74573d58a791d48c475230bcf000df2b2700b9027/sphinxcontrib-htmlhelp-2.0.0.tar.gz>
Already downloaded: /Users/yq/Library/Caches/Homebrew/downloads/5f7855f4134a0aed4946aa76a5202247a612ce4a235ec2466f9bac16453173d6--sphinxcontrib-htmlhelp-2.0.0.tar.gz
==> Downloading <https://files.pythonhosted.org/packages/b2/e8/9ed3830aeed71f17c026a07a5097edcf44b692850ef215b161b8ad875729/sphinxcontrib-jsmath-1.0.1.tar.gz>
Already downloaded: /Users/yq/Library/Caches/Homebrew/downloads/0cac3fdf6ce0ddabef294d3fbde4de8265e0c47f14daaa259388f4dd1805549c--sphinxcontrib-jsmath-1.0.1.tar.gz
==> Downloading <https://files.pythonhosted.org/packages/b1/8e/c4846e59f38a5f2b4a0e3b27af38f2fcf904d4bfd82095bf92de0b114ebd/sphinxcontrib-qthelp-1.0.3.tar.gz>
Already downloaded: /Users/yq/Library/Caches/Homebrew/downloads/8e4c6f7bdec732ed005f10a8bfc2cb56e0487656133ad214825ab85e0beecfbd--sphinxcontrib-qthelp-1.0.3.tar.gz
==> Downloading <https://files.pythonhosted.org/packages/b5/72/835d6fadb9e5d02304cf39b18f93d227cd93abd3c41ebf58e6853eeb1455/sphinxcontrib-serializinghtml-1.1.5>
Already downloaded: /Users/yq/Library/Caches/Homebrew/downloads/90c114ee39548bfb4468cfa7f89d292789fea261ac7bfede81aea2fefd715732--sphinxcontrib-serializinghtml-1.1.5.tar.gz
==> Downloading <https://files.pythonhosted.org/packages/80/be/3ee43b6c5757cabea19e75b8f46eaf05a2f5144107d7db48c7cf3a864f73/urllib3-1.26.7.tar.gz>
Already downloaded: /Users/yq/Library/Caches/Homebrew/downloads/90fc323ca48c547e79284dea2a7a91a708557d7a8aea2a444e78ac06832c7ea3--urllib3-1.26.7.tar.gz
==> Downloading <https://files.pythonhosted.org/packages/2b/73/a12887680688cc9a2ca0efb404fa2ee2be768f9a9143b758e53fef5db858/Sphinx-4.3.1.tar.gz>
Already downloaded: /Users/yq/Library/Caches/Homebrew/downloads/fbc6adb41faf2a15eda4ddefde3ba0357d49a9eaef806f913a57904e9a6d95a7--Sphinx-4.3.1.tar.gz
==> Downloading <https://www.bytereef.org/contrib/decimal.diff>
Already downloaded: /Users/yq/Library/Caches/Homebrew/downloads/f60b5004541eb3c87cce87ef3bf94933a2684ab267346afdc45ae1622ffa923a--decimal.diff
==> Downloading <https://files.pythonhosted.org/packages/cd/9a/6fff2cee92de1d34c0e8d48bb2ccedb0899eebb2cfe7955584b53bdaded7/setuptools-59.0.1.tar.gz>
Already downloaded: /Users/yq/Library/Caches/Homebrew/downloads/43aebbbeee0d529afdd5c0499db3e39fdb38a15bcaf165620d0466ffdb9a6399--setuptools-59.0.1.tar.gz
==> Downloading <https://files.pythonhosted.org/packages/da/f6/c83229dcc3635cdeb51874184241a9508ada15d8baa337a41093fab58011/pip-21.3.1.tar.gz>
Already downloaded: /Users/yq/Library/Caches/Homebrew/downloads/5ca12cc2c5b335848859bdfe275008a661ebd69763f2e1d377c17a73f3a8e6c9--pip-21.3.1.tar.gz
==> Downloading <https://files.pythonhosted.org/packages/4e/be/8139f127b4db2f79c8b117c80af56a3078cc4824b5b94250c7f81a70e03b/wheel-0.37.0.tar.gz>
Already downloaded: /Users/yq/Library/Caches/Homebrew/downloads/b422c65318230977ec4777e9ab04c2ba86bd3fc75d0cfd96b8629b51b5e35866--wheel-0.37.0.tar.gz
==> Downloading <https://www.python.org/ftp/python/3.9.9/Python-3.9.9.tar.xz>
Already downloaded: /Users/yq/Library/Caches/Homebrew/downloads/aab08f09c2aa3ebf56b35e3657b1194160f9353d8d4f1bd1d96e6964b2e45fe9--Python-3.9.9.tar.xz
==> Downloading <https://github.com/ninja-build/ninja/archive/v1.10.2.tar.gz>
==> Downloading from <https://codeload.github.com/ninja-build/ninja/tar.gz/refs/tags/v1.10.2>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://ghcr.io/v2/homebrew/core/meson/manifests/0.60.2>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://ghcr.io/v2/homebrew/core/meson/blobs/sha256:54b3564424cbf3e194a1ade78e6c2fb0d499b83a7f2ac82ebcca40ff29daa0a0>
==> Downloading from <https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:54b3564424cbf3e194a1ade78e6c2fb0d499b83a7f2ac82ebcca40ff29daa0a0?se=2022>-
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://raw.githubusercontent.com/Homebrew/formula-patches/03cf8088210822aa2c1ab544ed58ea04c897d9c4/libtool/configure-big_sur.diff>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://ftp.gnu.org/gnu/gettext/gettext-0.21.tar.gz>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://github.com/libffi/libffi/releases/download/v3.4.2/libffi-3.4.2.tar.gz>
==> Downloading from <https://objects.githubusercontent.com/github-production-release-asset-2e65be/321154/7a439000-d855-11eb-9161-0bf7b6e7c943?X-Amz-Algorithm>=
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://raw.githubusercontent.com/Homebrew/formula-patches/43467fd8dfc0e8954892ecc08fab131242dca025/glib/hardcoded-paths.diff>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://download.gnome.org/sources/glib/2.70/glib-2.70.1.tar.xz>
==> Downloading from <https://mirror.umd.edu/gnome/sources/glib/2.70/glib-2.70.1.tar.xz>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://downloads.sourceforge.net/project/freetype/freetype2/2.11.0/freetype-2.11.0.tar.xz>
==> Downloading from <https://phoenixnap.dl.sourceforge.net/project/freetype/freetype2/2.11.0/freetype-2.11.0.tar.xz>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://www.x.org/archive/individual/util/util-macros-1.19.3.tar.bz2>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://www.x.org/archive/individual/lib/xtrans-1.4.0.tar.bz2>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://ghcr.io/v2/homebrew/core/xcb-proto/manifests/1.14.1_1>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://ghcr.io/v2/homebrew/core/xcb-proto/blobs/sha256:172e8c721816f274068bd9ec31a02ca14f036bb7f55ead5879c67dc42fabec16>
==> Downloading from <https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:172e8c721816f274068bd9ec31a02ca14f036bb7f55ead5879c67dc42fabec16?se=2022>-
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://xcb.freedesktop.org/dist/libpthread-stubs-0.4.tar.bz2>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://ghcr.io/v2/homebrew/core/xorgproto/manifests/2021.5>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://ghcr.io/v2/homebrew/core/xorgproto/blobs/sha256:97763c1171ba9dc0772b5fa107c8dad9b19c3e73963d84887fb2d8c02a1ab59e>
==> Downloading from <https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:97763c1171ba9dc0772b5fa107c8dad9b19c3e73963d84887fb2d8c02a1ab59e?se=2022>-
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://www.x.org/archive/individual/lib/libXau-1.0.9.tar.bz2>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://www.x.org/archive/individual/lib/libXdmcp-1.1.3.tar.bz2>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://xcb.freedesktop.org/dist/libxcb-1.14.tar.gz>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://www.x.org/archive/individual/lib/libX11-1.7.2.tar.bz2>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://www.x.org/archive/individual/lib/libXext-1.3.4.tar.bz2>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://www.x.org/archive/individual/lib/libXrender-0.9.10.tar.bz2>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://cairographics.org/releases/pixman-0.40.0.tar.gz>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://gitlab.freedesktop.org/cairo/cairo/-/commit/e22d7212acb454daccc088619ee147af03883974.diff>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://cairographics.org/releases/cairo-1.16.0.tar.xz>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://ftp.gnu.org/gnu/bison/bison-3.8.2.tar.xz>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://gitlab.gnome.org/tschoonj/gobject-introspection/-/commit/a7be304478b25271166cd92d110f251a8742d16b.diff>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://gitlab.gnome.org/rokm/gobject-introspection/-/commit/56df7b0f007fe260b2bd26ef9cc331ad73022700.diff>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Cloning <https://gist.github.com/7a0023656ccfe309337a.git>
Cloning into '/Users/yq/Library/Caches/Homebrew/gobject-introspection--tutorial--git'...
==> Checking out revision 499ac89f8a9ad17d250e907f74912159ea216416
Note: checking out '499ac89f8a9ad17d250e907f74912159ea216416'.

You are in 'detached HEAD' state. You can look around, make experimental
changes and commit them, and you can discard any commits you make in this
state without impacting any branches by performing another checkout.

If you want to create a new branch to retain commits you create, you may
do so (now or later) by using -b with the checkout command again. Example:

  git checkout -b <new-branch-name>

HEAD is now at 499ac89...
==> Downloading <https://download.gnome.org/sources/gobject-introspection/1.70/gobject-introspection-1.70.0.tar.xz>
==> Downloading from <https://mirror.umd.edu/gnome/sources/gobject-introspection/1.70/gobject-introspection-1.70.0.tar.xz>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://scripts.sil.org/pub/woff/fonts/Simple-Graphite-Font.ttf>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://github.com/silnrsi/graphite/releases/download/1.3.14/graphite2-1.3.14.tgz>
==> Downloading from <https://objects.githubusercontent.com/github-production-release-asset-2e65be/44083391/2b177100-7400-11ea-8afe-a8e0e085d392?X-Amz-Algorith>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://github.com/unicode-org/icu/releases/download/release-69-1/icu4c-69_1-src.tgz>
==> Downloading from <https://objects.githubusercontent.com/github-production-release-asset-2e65be/49244766/f8594300-97e0-11eb-93b6-3cc5dfa61ec0?X-Amz-Algorith>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://github.com/harfbuzz/harfbuzz/raw/fc0daafab0336b847ac14682e581a8838f36a0bf/test/shaping/fonts/sha1sum/270b89df543a7e48e206a2d830c0e10e5>
==> Downloading from <https://raw.githubusercontent.com/harfbuzz/harfbuzz/fc0daafab0336b847ac14682e581a8838f36a0bf/test/shaping/fonts/sha1sum/270b89df543a7e48e>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://github.com/harfbuzz/harfbuzz/archive/3.1.2.tar.gz>
==> Downloading from <https://codeload.github.com/harfbuzz/harfbuzz/tar.gz/refs/tags/3.1.2>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://raw.githubusercontent.com/Homebrew/formula-patches/11c8360432f471f74a9b2d76e012e3b36f30b871/lua/lua-dylib.patch>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://www.lua.org/ftp/lua-5.4.3.tar.gz>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://ftp.gnu.org/gnu/m4/m4-1.4.19.tar.xz>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://ftp.gnu.org/gnu/autoconf/autoconf-2.71.tar.gz>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://ftp.gnu.org/gnu/automake/automake-1.16.5.tar.xz>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://github.com/Homebrew/formula-patches/raw/e5fbd46a25e35663059296833568667c7b572d9a/libtool/dynamic_lookup-11.patch>
==> Downloading from <https://raw.githubusercontent.com/Homebrew/formula-patches/e5fbd46a25e35663059296833568667c7b572d9a/libtool/dynamic_lookup-11.patch>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://ftp.gnu.org/gnu/libtool/libtool-2.4.6.tar.xz>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://github.com/yaml/libyaml/archive/0.2.5.tar.gz>
==> Downloading from <https://codeload.github.com/yaml/libyaml/tar.gz/refs/tags/0.2.5>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://rubygems.org/rubygems/rubygems-3.2.32.tgz>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://cache.ruby-lang.org/pub/ruby/3.0/ruby-3.0.3.tar.xz>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://github.com/macvim-dev/macvim/archive/snapshot-171.tar.gz>
==> Downloading from <https://codeload.github.com/macvim-dev/macvim/tar.gz/refs/tags/snapshot-171>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://github.com/fribidi/fribidi/releases/download/v1.0.11/fribidi-1.0.11.tar.xz>
==> Downloading from <https://objects.githubusercontent.com/github-production-release-asset-2e65be/5575048/398afe2d-2f83-4375-8b13-9e12215ad62c?X-Amz-Algorithm>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://download.gnome.org/sources/pango/1.48/pango-1.48.10.tar.xz>
==> Downloading from <https://mirror.umd.edu/gnome/sources/pango/1.48/pango-1.48.10.tar.xz>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://downloads.sourceforge.net/project/freetype/ttfautohint/1.8.4/ttfautohint-1.8.4.tar.gz>
==> Downloading from <https://versaweb.dl.sourceforge.net/project/freetype/ttfautohint/1.8.4/ttfautohint-1.8.4.tar.gz>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
Warning: pdf2htmlex has been deprecated because it has an archived upstream repository!
==> Downloading <https://sourceforge.net/p/giflib/bugs/_discuss/thread/4e811ad29b/c323/attachment/Makefile.patch>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://downloads.sourceforge.net/project/giflib/giflib-5.2.1.tar.gz>
==> Downloading from <https://phoenixnap.dl.sourceforge.net/project/giflib/giflib-5.2.1.tar.gz>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://rubygems.org/gems/concurrent-ruby-1.1.8.gem>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://rubygems.org/gems/pdf-core-0.9.0.gem>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://rubygems.org/downloads/ttfunk-1.7.0.gem>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://rubygems.org/gems/prawn-2.4.0.gem>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://rubygems.org/gems/prawn-icon-3.0.0.gem>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://rubygems.org/gems/public_suffix-4.0.6.gem>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://rubygems.org/gems/addressable-2.7.0.gem>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://rubygems.org/gems/css_parser-1.9.0.gem>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://rubygems.org/gems/rexml-3.2.5.gem>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://rubygems.org/gems/prawn-svg-0.32.0.gem>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://rubygems.org/gems/prawn-table-0.2.2.gem>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://rubygems.org/gems/afm-0.2.2.gem>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://rubygems.org/gems/Ascii85-1.1.0.gem>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://rubygems.org/gems/hashery-2.1.2.gem>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://rubygems.org/gems/ruby-rc4-0.1.5.gem>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://rubygems.org/gems/pdf-reader-2.4.2.gem>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://rubygems.org/gems/prawn-templates-0.1.2.gem>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://rubygems.org/gems/safe_yaml-1.0.5.gem>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://rubygems.org/gems/polyglot-0.3.5.gem>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://rubygems.org/gems/treetop-1.6.11.gem>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://rubygems.org/gems/asciidoctor-pdf-1.6.0.gem>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://rubygems.org/gems/coderay-1.1.3.gem>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://rubygems.org/gems/rouge-3.26.0.gem>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://github.com/asciidoctor/asciidoctor/archive/v2.0.16.tar.gz>
==> Downloading from <https://codeload.github.com/asciidoctor/asciidoctor/tar.gz/refs/tags/v2.0.16>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://www.kernel.org/pub/linux/utils/util-linux/v2.37/util-linux-2.37.2.tar.xz>
==> Downloading from <https://mirrors.edge.kernel.org/pub/linux/utils/util-linux/v2.37/util-linux-2.37.2.tar.xz>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
==> Downloading <https://www.ijg.org/files/jpegsrc.v9d.tar.gz>
Warning: ignoring --capath, not supported by libcurl
######################################################################## 100.0%
Error: SHA256 mismatch
Expected: 6c434a3be59f8f62425b2e3c077e785c9ce30ee5874ea1c270e843f273ba71ee
  Actual: 2303a6acfb6cc533e0e86e8a9d29f7e6079e118b9de3f96e07a71a11c082fa6a
    File: /Users/yq/Library/Caches/Homebrew/downloads/23faa446d5ad2c8f0a288f26af4c4f70666394f107eb58154ab432da5f6705d1--jpegsrc.v9d.tar.gz
To retry an incomplete download, remove the file above.

Fixed upstairs error,

    mv /Users/yq/Library/Caches/Homebrew/downloads/23faa446d5ad2c8f0a288f26af4c4f70666394f107eb58154ab432da5f6705d1--jpegsrc.v9d.tar.gz /Users/yq/Desktop/23faa446d5ad2c8f0a288f26af4c4f70666394f107eb58154ab432da5f6705d1--jpegsrc.v9d.tar.gz

brew install xz
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
Warning: xz 5.2.5 is already installed, it's just not linked.
To link this version, run:
  brew link xz

To fixed upstairs warning,

    brew link xz

That terminal output:

    Linking /usr/local/Cellar/xz/5.2.5... 76 symlinks created.
