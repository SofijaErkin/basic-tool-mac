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

### Second

we need to know where that fu-king default installed `VIM` with not supporting `python3`,

    which vim

output:

    /usr/bin/vim

mostly shows like the upstairs(depends default macOS).

Even we use "`--with-python3`" to install `VIM` with supporting

`Python3`at a long time, but Now `Homebrew` ONLY recognize "`python -V`"'s version.

SO we NEED to manually let default `python` to be `python3`.

Open your terminal and input:

    alias python="python3"

then checkout `python` that that version whether is `python3` or not:

    python -V

then, we found that "`python -V`" shows "`Python 3.9.12`".

### Third

That's time to use `Homebrew` to install `VIM`.

    brew install vim

After installing Homebrew`VIM`, we need to make sure where is Homebrew`VIM`,

differ from that default installed `VIM` of Mac:

    which vim

output:

    /usr/local/bin/vim

Please restart Your Mac, restart Your Terminal and reenter your terminal!!!

Please restart Your Mac, restart Your Terminal and reenter your terminal!!!

Please restart Your Mac, restart Your Terminal and reenter your terminal!!!

then, we need to checkout whether that Homebrew`VIM` supports `Python3` or Not:

    vim --version | grep python

output:

    +conceal           +linebreak         +python3           +visual

Successful!

## Way 2
