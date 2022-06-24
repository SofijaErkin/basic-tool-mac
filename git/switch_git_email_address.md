# Manually Switch Git-Account Email Address

I want to switch my Git Account Email address from one to another. Or, I need

to push my Git repository using my sync-Email. Also, I have to use my corporate

laptop to push my workspace but not using my predecessors' Git Email address.

## 1. Generate SSH Key Pair

First, my new Email need a customization SSH key pair.

Open and enter my Terminal, and print that codes. I've just used iTerm2 as my

laptop default terminal.

    ssh-keygen -t rsa -b 4096 -C "my_new_email_address_for_git@gmail.com"

The terminal prompt:

    Generating public/private rsa key pair.
    Enter file in which to save the key (/Users/XXX/.ssh/id_rsa):

Just input that below code to named my RSA as "`my_new_email_address_id_rsa`"

and store that RSA under "`/Users/user_name/.ssh/my_new_email_address_id_rsa`".

    /Users/user_name/.ssh/my_new_email_address_id_rsa

And that terminal prompt:

    Enter passphrase (empty for no passphrase):

I just input "`enter`" key.

Also, that terminal prompt:

    Enter same passphrase again: 

I also just input "`enter`" key.

Then, the terminal prompt:

    Your identification has been saved in /Users/user_name/.ssh/my_new_email_address_id_rsa

    Your public key has been saved in /Users/user_name/.ssh/my_new_email_address_id_rsa.pub

    The key fingerprint is:

    ...

## 2. Add SSH Key Pair

### 2.1 Start SSH-Agent in the Background

Just use this code:

    eval "$(ssh-agent -s)"

That terminal prompt:

    > Agent pid 59566

### 2.2 Configure SSH config file

Create or edit a config configuration file under the `/.ssh` directory:

    cd /Users/user_name/.ssh && vim config

Notice:

Please pay attention to the common commands of vim or bash:

    Press the letter key "i" to edit mode;

    Press the return key "esc" + input the letter ":wq": save and exit;

Edit and adding :

    Host my_new_email_address-github.com

        Hostname github.com

        User git

        AddKeysToAgent yes

        UseKeychain yes

        IdentityFile /Users/user_name/.ssh/my_new_email_address_id_rsa

### 2.3 Add to SSH-Agent

Just use that below code:

    ssh-add -K /Users/user_name/.ssh/my_new_email_address_id_rsa

Notice: using the below on Linux:

    /usr/bin/ssh-add -k /home/user_name/.ssh/my_new_email_address_id_rsa

Check the proxy of the ssh key again:

    ssh-add -l

That terminal prompt:

    4096 SHA256:............/Users/user_name/.ssh/my_new_email_address_id_rsa (RSA)

### 2.4 Adding Public RSA to Git Platform SSH keys

Just use that code to catch the public RSA key:

    cat /Users/user_name/.ssh/my_new_email_address_id_rsa.pub

Copy the print to GitHub ssh key location.

Check the proxy of the ssh key again:

    ssh-add -l

That terminal prompt:

    4096 SHA256:............ /Users/user_name/.ssh/sofija_personal_github_id_rsa (RSA)

### 2.5 Local Git Do Connect With GitHub via SSH

Just use this command:

    ssh -T git@my_new_email_address-github.com

That terminal prompt:

    Hi my_github_user_name! You've successfully authenticated, but GitHub does not provide shell access.

If that is GitLab, prompt:

    Welcome to GitLab, @my_gitlab_user_name!

If that is Bitbucket, prompt:

    authenticated via ssh key.

    You can use git to connect to Bitbucket. Shell access is disabled

## 3. Change Local Git Config

Just enter your local repository, change git "`user.name`", "`user.email`" and

"`remote-url`" to mine, use this command:

    git config --list && git config user.name "MY_NEW_EMAIL_ADDRESS_GIT_NAME" && git config user.email "my_new_email_address_for_git@gmail.com" && git remote set-url origin git@my_new_email_address-github.com:my_github_user_name/my_remote_repository_name.git && git config --list

Then create a new Markdown "`README.md`" to test my changed Email address, just

use this command:

    echo "This is a test for \"my new Email address git\"." >> README.md && git add README.md && git commit -m "Create README.md to test new Email git" && git pull && git push

Then, just log into my Git account to checkout my repository's' "`README.md`".

## 4.Change Remote Git User Name

It's best to change my remote GitHub/GitLab/Bitbucket etc user name. After

changing my remote GitHub account user name "`my_github_user_name`" to

"`MyNewEmailNewGitName`", and I also need to change my remote URL in local

repository, just use this command:

    git config --list && git remote set-url origin git@my_new_email_address-github.com:MyNewEmailNewGitName/my_remote_repository_name.git && git config --list

Also, use "`README.md`" to checkout renamed Github user name

"`MyNewEmailNewGitName`". Just use this command:

    echo "This is a test for \"my new Git user name\"." >> README.md && git add README.md && git commit -m "Update README.md to test new Git user name" && git pull && git push

Then, just log into my Git account to checkout my repository's' "`README.md`".

That "`README.md`" in my repository just like:

    This is a test for "my new Email address git".

    This is a test for "my new Git user name".

Now, I've finished all.
