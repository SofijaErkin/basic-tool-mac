# VIM Manually [Folding by indent](http://vimdoc.sourceforge.net/htmldoc/usr_28.html#28.5)

Folding by indent is an in-build function of VIM. Also, see [folding](http://vimdoc.sourceforge.net/htmldoc/usr_28.html#28.5).

Now, we talk about indent folding method. Just for me as a freshman.

Setting `foldmethod` option:

    :set foldmethod=indent

Then use `VIM` command `zm` and `zr` to fold more or reduce the folding.

Notice:

A fold level: `shiftwidth` worth of indent adds one to the depth of the fold.

Also, `zm` and `zr` actually increase or decrease the `foldlevel` option.

Directly set `foldlevel`:

    :set foldlevel=3

The upstairs means that all lines with three times a `shiftwidth` indent or

more will be closed.

If `foldlevel` == 0, all the folds are closed;

The lower foldlevel, the more folds will be closed.

Command `zM`: sets the `foldlevel` to zero;

while command `zR`: sets the `foldlevel` to the deepest fold level for this

current file.

Command `zo`: open the specific fold;

while command `zc`: close that fold.

Finally, checkout [fold-indent](http://vimdoc.sourceforge.net/htmldoc/fold.html#fold-indent).
