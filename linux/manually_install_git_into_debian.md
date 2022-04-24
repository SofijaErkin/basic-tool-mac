# [Debian Manually install Git](https://www.digitalocean.com/community/tutorials/how-to-install-git-on-debian-10)

## ([git8.2 on Debian 11](https://gist.github.com/SofijaErkin/2a2bbfb2917c6a5a4ecc281e48cb63f8))

Update April 23 EST PM 9:13

deps:

    libssl-dev; libghc-zlib-dev; libcurl4-gnutls-dev; libexpat1-dev; +(gettext); 

## Installing Git from Source

A more flexible method of installing Git is to compile the software from source

. This takes longer and will not be maintained through your package manager,

but it will allow you to download the latest release and give you control over

certain options you include if you wish to customize them.

Before you begin, you need to install the software that Git depends on. This is

all available in the default repositories, so start by updating your local

package index:

    sudo apt update
Next, install the packages:

    sudo apt install make libssl-dev libghc-zlib-dev libcurl4-gnutls-dev
    libexpat1-dev gettext unzip
BIG BIG BIG Notice:  

All needed packages should be install together, even if you already have

installed.

After you have installed the necessary dependencies, go ahead and get the

version of Git you would like to install by visiting the [Git project’s mirror](https://github.com/git/git)

on GitHub, available via the following URL:

    https://github.com/git/git
From here, be sure that you are on the master branch. Click on the Tags link

and select your desired Git version. Unless you have a reason for downloading a

release candidate version (marked as rc), try to avoid these as they may be

unstable.

Next, on the right side of the page, click on the Code button, then right-click

on `Download ZIP` and copy the link address that ends in `.zip`.

Back on your Debian 8 server, change into the tmp directory to download

temporary files:

    cd /tmp
From there, you can use the `wget` command to install the copied `zip` file

link. We’ll specify a new name for the file as `git.zip`:

    wget https://github.com/git/git/archive/refs/tags/v2.18.0.zip -O git.zip
Next, `unzip` the file that you downloaded:

    unzip git.zip
Then change into the following directory:

    cd git-*
Now you can make the package with the following command:

    make prefix=/usr/local all
After, install the package by running the following:

    sudo make prefix=/usr/local install
To ensure that the install was successful, you can run `git --version` and you

should receive relevant output that specifies the current version installed for

Git.

Now that you have Git installed, if you want to upgrade to a later version, you

can clone the repository, and then build and install. To find the URL to use

for the clone operation, navigate to the branch or tag that you want on the

[project’s GitHub page](https://github.com/git/git) and then copy the clone URL

on the right side:

At the time of writing, the relevant URL is the following:

    https://github.com/git/git.git
First change to your home directory:

    cd ~
Then use `git clone` on the URL you recently copied:

    git clone https://github.com/git/git.git
This will create a new directory within your current directory where you can

rebuild the package and reinstall the newer version, as you did previously.

This will overwrite your older version with the new version. Here are the

commands again for making and installing the package:

    cd git

    make prefix=/usr/local all

    sudo make prefix=/usr/local install
With this complete, you can be sure that your version of Git is up-to-date.

Do not forget:

    sudo ln -s /usr/local/bin/git /usr/bin/git

## Setting Up Git

Now that you have Git installed, you should configure it so that the generated

commit messages will contain your correct information.

This can be achieved by using the `git config` command. Specifically, you need

to provide your name and email address because Git embeds this information into

each commit you do.

First, add your name:

    git config user.name "Bad Domain"
Then add your email address:

    git config user.email "baddomain@hotmail.com"
You can view all of the configuration items that have been set by running list:

    git config --list
Output

    user.name=Bad Domain

    user.email=baddomain@hotmail.com

    ...
The information you enter is stored in your Git configuration file, which you

can optionally edit with a text editor. Here we’ll use `Vim` as an example to

edit the Git configuration file:

    vim ~/.gitconfig
~/.gitconfig contents:

    [user]

      name = Bad Domain

      email = baddomain@hotmail.com
There are many other options that you can set, but these are the two essential

ones needed. If you skip this step, you’ll likely receive warnings when you

commit to Git. This creates more work for you because you will then have to

revise the commits you have done with the corrected information.

## Refer

[How To Install Git on Debian 10](https://www.digitalocean.com/community/tutorials/how-to-install-git-on-debian-10).

## Others

Notice: git 2.35.2:

    hint: Pulling without specifying how to reconcile divergent branches is

    hint: discouraged. You can squelch this message by running one of the following

    hint: commands sometime before your next pull:

    hint:

    hint:   git config pull.rebase false  # merge (the default strategy)

    hint:   git config pull.rebase true   # rebase

    hint:   git config pull.ff only       # fast-forward only

    hint:

    hint: You can replace "git config" with "git config --global" to set a default

    hint: preference for all repositories. You can also pass --rebase, --no-rebase,

    hint: or --ff-only on the command line to override the configured default per

    hint: invocation.
