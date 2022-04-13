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

SO, firstly
I uninstall python@3.9:

    brew uninstall 
