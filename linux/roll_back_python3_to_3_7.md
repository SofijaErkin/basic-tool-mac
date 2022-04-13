# Manually Roll Back Python3 to Python@3.7

Begin:
 `brew` installed `python@3.7` was under:

    /usr/local/Cellar/python
that `brew` installed `python@3.7` has a soft link `python` under:

    /usr/local/opt
The upstairs soft link is to do optionally config choose for other Tools.

e.g: `Vim`.

Also, `Vim` installed configuration depends that soft link `python`.

When brew install package `python@2` or `python@3`, that will download under

    /usr/local/Cellar/
And that will create soft link `python@2` or `python@3` under

    /usr/local/bin
This upstairs soft link is to do with terminal command or default package

target.

I've just used brew install shellcheck, and now that installed `python@3.9` has

made my `Vim` in trouble. I need to fix `Vim`, roll back `python3` to `3.7`.

After `brew` installed python@3.9, my `Vim` was in trouble. FUCK!

I know nothing to deal that!

So, I manually installed `python@3.7.5` package, my `Vim` had worked.

That manually installed `python@3.7.5` package was under:

    /Library/Frameworks/Python.framework/Versions/
That upstairs directory is user's controlling installed directory.

Yes, I have to need that.

Terminal `python3` was `python@3.7.5`, but `python@3.9` still stayed there. I

did not need that.

Also, I did need `python@3.7.5` that brew did install instead of manually

`python@3.7.5`.

SO,

firstly,

I uninstall `python@3.9`:

    brew uninstall --ignore-dependencies python@3.9
secondly,

I uninstall that manually installed package `python@3.7`:

    rm -rf /Library/Frameworks/Python.framework/Versions/3.7
Also delete that manually installed `python@3.7`app `python 3.7`:

    rm -rf "/Applications/Python 3.7"

change soft link that under `/usr/local/opt` or `/usr/local/bin` about

`python` or `python3` or `python@3` or `python3.7` from under

`/Library/Frameworks/Python.framework/Versions/` to under

`/usr/local/Cellar/`.

    cd /usr/local/bin

    ls -l /usr/local/bin | grep "/Library/Frameworks/Python.framework/Versions/3.7"

    unlink all_that_shallow

    ln -s /usr/local/Cellar/all_that_shallow all_that_shallow_new_Cellar

    cd /usr/local/opt

    ls -l /usr/local/opt | grep "/Library/Frameworks/Python.framework/Versions/3.7"

    unlink all_that_shallow_opt

    ln -s /usr/local/Cellar/all_that_shallow_opt all_that_shallow_new_Cellar_opt
Or,

You could use like `ln -snf new_source_directory_Cellar target_soft_link_opt_or_bin`.

Refer:

[Homebrew: Rollback from Python 3.7 to Python 3.6.5.x?](https://apple.stackexchange.com/questions/329187/homebrew-rollback-from-python-3-7-to-python-3-6-5-x)

[How can I install a previous version of Python 3 in macOS using homebrew?](https://stackoverflow.com/questions/51125013/how-can-i-install-a-previous-version-of-python-3-in-macos-using-homebrew/51125014#51125014)
