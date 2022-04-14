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
