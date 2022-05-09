# Mac Manually install VIM with supporting Python3

I include this answer to "`Way 0`" and "`Way 1`" and "`Way 2`".

## Way 0

### 1.run the below on terminal

    brew reinstall python3

the upstairs shows that we reinstall python3 to make sure that needed by VIM.

### 2.continue run on terminal

    brew uninstall vim

the upstairs shows that uninstall vim only if you previously installed it

### 3.run on terminal

    brew install vim

the upstairs shows that reinstall vim via Homebrew.

### 4.run on terminal

#### 4.1 directly use $SHELL command

    alias vim=/usr/local/bin/vim

#### 4.2 or `bash` 's profile(if you use `bash` as `SHELL`)

    echo 'export PATH="/usr/local/opt/vim/bin:$PATH"' >> ~/.bash_profile

    source ~/.bash_profile

#### 4.3 OR `zsh` configuration file(if  you use `zsh` as `SHELL`)

edit your `zsh` configuration file `~/.zshrc` via

    vim ~/.zshrc

and add the below to TOP line(just use `i` to enter editing status,

then use "`:wq`" to quit editing status and save file):

    export VIM_HOME=/usr/local/Cellar/vim/8.2.2100/

    export PATH=$PATH:$VIM_HOME/bin

and active that config

    source ~/.zshrc

(Both 4.1 or 4.2 or 4.3 are the same function.)

the upstairs 4.1/4.2/4.3 shows that we let shell command `vim` using Homebrew`VIM` not the default`VIM`.

We know the default `VIM` functional file is located at `/usr/bin/vim`,

while homebrew `VIM` functional file is located at `/usr/local/bin/vim`;

And default `VIM` support `Python2` with not supporting `Python3`,

but homebrew `VIM` support `Python3`(That's also we needed!).

Let's look at Homebrew `VIM`:

Homebrew will install `VIM` vim  at `/usr/local/Cellar/vim`,

create soft link `vim` under `/usr/local/opt`,

and Homebrew `VIM` 's functional file `vim` is located at `/usr/local/bin/vim`, also linked to `/usr/local/Cellar/vim`.

## Way 1

### First

you need to use this to checkout whether `VIM` support `Python3` or not?

    vim --version | grep python

you may see the terminal output liking:

    +conceal           +linebreak         -python3           +visual

as the upstairs shows: that Mac default installed `VIM` DO NOT SUPPORT `Python3`.

And that default installed `VIM` of Mac is not been installed via "`brew`".

Now, we could not use liking "`brew remove`" to delate that default installed `VIM` of Mac,

and it's also why your action

    "brew delete vim and brew cleanup and reinstalled Vim"

DO NOT FUNCTION!

## Way 2
