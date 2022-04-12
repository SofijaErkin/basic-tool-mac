# Software Engineer Tools Conclusions

I need to conclude software engineering tools about what are they and how to use

those.

## 1. Commands Or Plug-ins

### 1.1 rsync(command)

Transform/Transmit and sync the data/code between local and remote.

### 1.2 [spell check](https://ostechnix.com/use-spell-check-feature-vim-text-editor/)(command)

VSCode just use Extension `Code Spell Checker`  and `Grammarly (unoffical)`.

[vim for writers](https://hackernoon.com/vim-for-writers-ee15d2a8f512).

Config spell in Vim under `/usr/share/vim/vim81/spell`.

Need to type the command inside Vim session.

`:help spell`: know more about spell check feature.

`:set spell` : enable spell check.

`:set nospell` : disable spell check.

`]s` : find the misspelled word after the cursor (forward search).

`[s` : find the misspelled word before the cursor (backward search).

`]S` :  (note the capital "`S`") - Similar to "`]s`" but only stop at bad words,

not at rare words or words for another region.

`[S` : similar to "[s" but search backwards.

`z=` : find suggestions for the that particular word (then type number `XXX` and

`ENTER` replace that misspelled word).

`:wq` : save the changes and quit Vim editor.

`:set spell spelllang=en_us` : set spell language to US English.

(Terminal session) `$ mkdir -p ~/.vim/spell/` and

`:set spellfile=~/.vim/spell/en.utf-8.add` : enable add words to spellfile.

either `[s` or `]s` and type `zg`. It will add the word under the cursor as good word

in spellfile.

`zug` : undo this add (remove the word from spellfile).

`zw` : mark the mispelled word.

`zuw` : undo this action.

`:help spelllang` : checkout spell language.

`:help spellfile` : checkout added spell file.

`:help spellfile-cleanup`.

Related Read:

1.[How To Manage Vim Plugins Using Vundle On Linux](https://ostechnix.com/manage-vim-plugins-using-vundle-linux/).

2.[GNU Aspell – A Free, Open Source And Independent Spell Checker](https://ostechnix.com/gnu-aspell-free-open-source-independent-spell-checker/).

### 1.3 [Syntax highlighting](https://linuxhint.com/vim_syntax_highlighting/)(command)

Syntax highlighting is on for vim editor by default.

After opening target file in vim editor, press `ESC` key and type `:syntax on`

to enable syntax highlighting.

Press `ESC` key and type, `syntax off` to disable syntax highlighting.

## 2. Applications

## 3. Online Services

## 4. Framework Or Libraries
