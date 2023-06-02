# This is a roadmap of building ssh vi vim and VS Code on mac.
# '#' just for only one line comment
if 0 {

# SSH Manually

GitHub source project [here](https://github.com/SofijaErkin/basic-tool-mac/blob/main/ssh/ssh-build-roadmap.tcl)

GitHub Gist source [here](https://gist.github.com/SofijaErkin/a5b866c4a1bf5abb69ba0d99599ebe28#ssh-manually).



## 1.Search "Terminal log in GitHub"

The better way to build ssh for logging in cloud services (such as `GitHub`, 

`GitLab`, `Gitee`, `Bitbucket` ...), remote web server(`Nginx`, `Cloudflare Server`,

`Apache`, `IIS and Lighttpd`, `Microsoft Internet Information Services`, 

`Sun Java System Web Server` and `Jigsaw`), customer premises via git 

is that just search "`terminal log in github`" by Google search engine.

A better way to learn the terminal to log in to github is to read the 

official github related documents.

firstly search just using native language,

secondly search just using english,

thirdly search just using third language,

As the saying goes, well-informed.

## 2.What is [SSH](https://ja.wikipedia.org/wiki/Secure_Shell)

`Secure Shell (SSH)` is a cryptographic network protocol for operating network 

services securely over an unsecured network.

Typical applications include remote command-line, login, and remote command 

execution, but any network service can be secured with `SSH`. 

`SSH` provides a secure channel over an unsecured network by using a client

–server architecture, connecting an `SSH` client application with an `SSH` server.

The protocol specification distinguishes between two major versions, referred 
 
to as `SSH-1` and `SSH-2`. 

The standard `TCP` port for `SSH` is `22`. 

`SSH` is generally used to access `Unix-like` operating systems, but it can also 

be used on `Microsoft Windows`.

`Windows 10` uses `OpenSSH` as its default `SSH` client and `SSH` server.

`SSH` was designed as a replacement for Telnet and for unsecured remote shell 

protocols such as the Berkeley rsh and the related rlogin and rexec protocols. 

Those protocols send sensitive information, notably passwords, in plaintext, 

rendering them susceptible to interception and disclosure using packet 

analysis.

The encryption used by `SSH` is intended to provide confidentiality and 

integrity of data over an unsecured network, such as the `Internet`. 

## 3.Build SSH

The most effective and safest way to build `SSH` is to refer to the search 

engine to practice, and then use the search engine to find and solve 

the problem.

### 3.1 Create GitHub Directory

I know, I'll have more than one `GitHub` account, some are personal, others 

are corporate. So I just create a directory `/GitHub` in my current user 

directory `/Users/marryme`, before doing this, I need to enter the terminal.

Some use the default terminal Apple `Terminal`, but I use `iTerm` here.

when i'm in the terminal, just use this command to create the directory

`/GitHub`:

`mkdir GitHub`

Also, use this command to enter the directory `/Users/marryme/GitHub`:

`cd /Users/marryme/Github`

I know, I'll have more than one personal `GitHub` accounts and more than one

corporate `GitHub` accounts. Now I'll create a directory `/Personal` and a

directory `/Corporate`. Just use this command to create that directions:

`mkdir Personal`

`mkdir Corporate`

Now, I have more than one personal GitHub accounts. My personal Github 

accounts `Sofija`, `Starla`, `Sivert`. Enter my personal GitHub directory

`/Personal` and create three personal GitHub accounts:

`mkdir Sofija`

`mkdir Starla`

`mkdir Sivert`

### 3.2 SSH Keys Generation and Configuration

Now the simple roadmap of logging in GitHub via terminal using ssh and git.

#### 3.2.1 Create SSH key for my personal GitHub Sofija

Just use this command to enter my personal GitHub account directory `/Sofija`:

`cd /Users/marryme/GitHub/Personal/Sofija`

##### 3.2.1.1 Command create SSH key

SSH is to connect between my computer Git and my GitHub,so Enter the command 

to create an SSH Key for my personal GitHub account Sofija:

`ssh-keygen -t rsa -b 4096 -C "sofijapersonalgithub@gmail.com"`

-`t type`

鍵の生成に使用する鍵のアルゴリズムを指定します。プロトコルバージョン 2 に指定可能な値は「`rsa`」

または「`dsa`」です。指定できる値は、「`ecdsa`」、「rsa」または「`dsa`」です

`-b “Bits”` 

This option specifies the number of bits in the key. The regulations 

that govern the use case for SSH may require a specific key length to be used. 

In general, 2048 bits is considered to be sufficient for RSA keys.

`-C comment`

鍵ファイル内のコメントフィールドに情報を指定します。文字列に空白が含まれている場合、

引用符を使用します。鍵の作成時にコメントを指定していない場合、鍵の種類、作成者、日付、時刻を含

む既定のコメントが作成されます。

`sofijapersonalgithub@gmail.com` is my email address

##### 3.2.1.2 Change the name of file rsa 

The terminal prompt is as follows:

`Generating public/private rsa key pair.`

`Enter file in which to save the key (/Users/XXX/.ssh/id_rsa):`

At this time, press Enter directly, and a public key named id_rsa will be created under

the path `/Users/XXX/.ssh/`, which is not what I want.

Because I want to manage multiple ssh keys, this naming does not have any characteristics.

I will store `sofija_personal_github_id_rsa` in `/Users/user-name/.ssh/sofija_github_id_rsa`.

Enter the following command in the terminal:

`/Users/user-name/.ssh/sofija_personal_github_id_rsa`

It means that this is the key of my private github account, and then according to the terminal 

prompt, enter and confirm the password, and it can be generated.

`Enter passphrase (empty for no passphrase): `

`Enter same passphrase again: `

`Your identification has been saved in /Users/XXX/.ssh/sofija_personal_github_id_rsa.`

`Your public key has been saved in /Users/XXX/.ssh/sofija_personal_github_id_rsa.pub.`

`The key fingerprint is:`

--------------------------------
|                              |
|    xxxxxx                    |
|         xxxxx                |
|                              |
|     xxxxx                    |
|     xxxxx                    |
|          xxxxx               |
|                              |
|                              |
|                              |
--------------------------------


#### 3.2.2 Start SSH-Agent in the Background

`eval "$(ssh-agent -s)"`

`> Agent pid 59566`

#### 3.2.3 (Optional But Recommended)Configure SSH Proxy

Once you have created the above ssh key, you can start to manage it.

Enter the following command in the terminal to query the proxy of 

the system ssh key:

`ssh-add -l`

If the system has set up a proxy, you need to delete:

`ssh-add -D`

`All identities removed.`

If prompted:

`Could not open a connection to your authentication agent.`

execute:

`ssh-agent bash`

#### 3.2.4 Adding Private RSA to My Computer SSH Agent)

SSH-Agent, [a helper program](https://www.ssh.com/academy/ssh/agent)，[a key manager for SSH](https://smallstep.com/blog/ssh-agent-explained/), a agent server.

But during the SSH handshake my computer local git as a client,

and GitHub ad a server.

##### 3.2.4.1 Configure SSH config file

Create a config configuration file in the /.ssh directory:

`cd /Users/user-name/.ssh && vim config`

Pay attention to the common commands of `vim` or `bash`:

   1) Press the letter key "`i`" to edit mode;

   2) Press the return key "`esc`" + input the letter "`:wq`": save and exit;

Edit and adding :

    Host sofija_personal-github.com
   
       Hostname github.com
       
       User git
       
       AddKeysToAgent yes
       
       UseKeychain yes
       
       IdentityFile /Users/marryme/.ssh/sofija_personal_github_id_rsa
       
##### 3.2.4.2 SSH key added to SSH-Agent

Add the SSH private key to ssh-agent and store the passphrase in the keychain. 

If you create a key with another name, or if you want to add an existing key 

with another name, replace `sofija_personal_github_id_rsa` in the command with 

the name of the private key file.

`ssh-add -K /Users/marryme/.ssh/sofija_personal_github_id_rsa`

Check the proxy of the ssh key again:
  
`ssh-add -l`

`4096 SHA256:............ /Users/marryme/.ssh/sofija_personal_github_id_rsa (RSA)`

#### 3.2.5 Adding Public RSA to GitHub SSH keys

Notice: Update 1:20 EST Friday June 2 2023

if your remote repository `Bitbucket` occurs:

    SSH Host Key Rotation
    IMPORTANT NOTICE: Bitbucket Cloud’s RSA SSH Host Key will be rotated on June 20, 2023 1700 UTC
    
You just need to replace the old Bitbucket's SSH host Key at your local laptop's `~/.ssh`
with the New bitbucket SSH Host key, via command:

    ssh-keygen -R bitbucket.org && curl https://bitbucket.org/site/ssh >> ~/.ssh/known_hosts

Notice: You do not need to generate a non-RSA type SSH key pair for Bitbucket, as Bitbucket
still supports RSA type SSH key pairs for authentication. You just need to update the SSH
Host Key for Bitbucket on your local machine.

Refer:[SSH Host Key Rotation(Stack overflow)](https://stackoverflow.com/a/76387301/10846570).
 
I know, no matter I directly copy the public key file 
 
`sofija_personal_github_id_rsa.pub` via vim copying or changing the `.pub` 
 
to `.txt`, that all does not successfully add to GitHub SSH keys, Use the 
 
`cat` command to print out the just created ssh key in the terminal.

(After creating the local ssh key, I need to let github know that the ssh key 

is myself, so I need to copy the generated ssh key, write it to github, and 

enter it in the terminal under mac)
 
`cat /Users/user-name/.ssh/sofija_personal_github_id_rsa.pub`
 
 copy the print to GitHub ssh key location
 
 Check the proxy of the ssh key again:
  
`ssh-add -l`

`4096 SHA256:............ /Users/marryme/.ssh/sofija_personal_github_id_rsa (RSA)`

 
 ### 3.3Local Git do connect with GitHub via SSH)
 
 Enter the following verification command in the terminal. If it returns as follows, 
 
 the configuration is successful:
 
 `ssh -T git@sofija_personal-github.com`
 
 discover Terminal:
 
 `The authenticity of host 'github.com (xxx.xx.xxx.xxx)' can't be established.`
 
 `ECDSA key fingerprint is SHA256:XXXXxxxxXXXXxxxxXXXXxxxxXXXXxxxx.`
 
 `Are you sure you want to continue connecting (yes/no)?`
 
Please type "`yes`".
 
Then success:
 
 `Warning: Permanently added 'github.com,xxx.xx.xxx.xx' (ECDSA) to the list of known hosts.`
 
 `Hi Sofija! You've successfully authenticated, but GitHub does not provide shell access.`
 
 If that was in GitLab, then:
 
 `Warning: Permanently added 'gitlab.com,xxx.xx.xxx.xx' (ECDSA) to the list of known hosts.`
 
 `Welcome to GitLab, @sofijapersonalgithub!`
 
 If that was in Bitbucket,then:
 
  if you enter "`ssh -T git@sofija_personal-bitbucket.com`", then:
  
    `The authenticity of host 'bitbucket.com (xx.xxx.xx.x)' can't be established.`
    
    `RSA key fingerprint is SHA256:XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX.`
    
    `Are you sure you want to continue connecting (yes/no)?`
    
    please type "`yes`".
  
  Then, successful:
  
    `Warning: Permanently added 'bitbucket.com,xx.xxx.xx.x' (RSA) to the list of known hosts.`
    
    `authenticated via ssh key.`
    
    `You can use git to connect to Bitbucket. Shell access is disabled`
 
 ## 4.Upload Repository
 
First, before uploading the repository, you need to create a github repository. After 

logging in to your account, click `+` next to the avatar and select `New repository` to 

create a personal repository.
 
You can first create an empty warehouse, public, without README.md,LICENSE, .gitignore 

and .gitattributes.

Please remember the ssh-url(SSH Git Address) of the empty warehouse created.

## 4.1 TO Not Empty Repository

If your GitHub repository are not empty or you firstly download GitHub 
 
repository to your local workspace or Your GitHub has that repository but
 
your local workspace has not that repository, please use command the step 
 
`## 4.1`.

I need to enter my personal GitHub account directory.

`cd /Users/user-name/GitHub/Personal/Sofija`

Now I need to pull remote Repository:
 
`git clone git@sofija_personal-github.com:SofijaPersonal/hello-world-debug-vscode.git`
 
(`git clone` only run once, once run git clone, then do not need to run `git init` 
 
and `git remote add origin git@sofija_personal-github.com:SofijaPersonal/hello-world-debug-vscode.git`)

`git clone` will clone the remote repository to the local directory 

`/Users/marryme/GitHub/Personal/Sofija` via creating the directory

`/Users/marryme/GitHub/Personal/Sofija/hello-world-debug-vscode`.

The created directory `/Users/marryme/GitHub/Personal/Sofija/hello-world-debug-vscode`

is that my created GitHub Repository just now.

And, the created directory `/hello-world-debug-vscode` also include `.git`.

Now I need to enter my local repository `hello-world-debug-vscode`

`cd hello-world-debug-vscode`
 
Configure the information of the git user of the current Repository. 

If I do not configure the git user of the current Repository, then the user name 
 
submitted to GitHub is the current user name of the computer; 

for example, 
 
the current user name of my computer is `marryme`, if I do not configure the 
 
user name of my current warehouse as `Sofija`, then submit The name of the 
 
Repository to GitHub is `marryme`.
 
 
(I think a safe, convenient, and concise way to use git is to configure 
 
different user names, emails, and passwords in each local Repository, so 
 
that possible problems can be located in a certain Repository) 


In the terminal, enter the following commands respectively to check the 

partial configuration information of git in the current computer. If it 

does not return, it means that there is no partial configuration. 

If there is, you can see that the corresponding default account is that.

`git config user.name`
 
`git config user.email`

If the return is empty, it means that no partial configuration has been 

performed, and the account name and email address of github can be 

configured separately:
 
`git config user.name "Sofija_Personal_GitHub"`
 
`git config user.email "sofijapersonal@gmail.com"`

execute：
 
`git config --list`

You can view the specific configuration information of the current Repository. 

The configuration viewed in the current Repository directory is the global 

configuration + the local configuration of the current project. When using it, 

the local configuration of the current Repository will be used first. If not, 

the global configuration will be read.

Now we create `README.md` and write "`# hello-world-debug-vscode`":
 
`echo "# hello-world-debug-vscode" >> README.md`

Add the file `README.md` that needs to be updated to the local git repository:
 
`git add README.md`

(`git add <your file name>`: specify the class update)
 
(`git add .`:All classes that need to be updated)

Check if the file to be uploaded is correct:
 
`git status`

Record this submission:

`git commit -m "Create README.md"`

Create `main` branch, git workspace and move from `master` branch to `main` branch,

`-m` attribute is used to rename the branch name without affecting the branch’s 

history:
 
`git branch -M main`

Mention the main branch to the remote github repository, `-u` attribute is used to 

set the upstream tracking for the branch.:
 
`git push -u origin main`

The main here refers to the `main` branch name, if it is another branch, fill in the 

corresponding branch name.

Log in to github to view the submission results.

### 4.2 TO Empty Repository
 
If your GitHub repository is empty, then just use the step `4.2`.

i need to create a directory `/hello-world-debug-vscode`.Please remember every 

GitHub Repository to create one directory, and i'm in the directory

`/Users/marryme/GitHub/Personal/Sofija`, Now:

#### 4.2.1 The Summary for Step 4.2

Update EST AM 03:32 May 30 Tuesday, in summary for Step `4.2`:

    cd ~/GitHub/Personal/Sofija && mkdir hello-world-debug-vscode &&
    cd hello-world-debug-vscode && touch README.md &&
    echo "# hello-world-debug-vscode" >> README.md && git init &&
    git config user.name "Sofija_Personal_GitHub" &&
    git config user.email "sofijapersonal@gmail.com" &&
    git add README.md && git commit -m "Create README.md" &&
    git branch -M main &&
    git remote add origin git@sofija_personal-github.com:SofijaPersonal/hello-world-debug-vscode.git
    && git push -u origin main

mkdir hello-world-debug-vscode && cd hello-world-debug-vscode

The same thing, create `README.md` and write "`# hello-world-debug-vscode`":
 
`echo "# hello-world-debug-vscode" >> README.md`

make this directory `/hello-world-debug-vscode` Git Repository
 
`git init`
 
`git init` only run once, that will create the local Git repository.

ALso, enter the following commands respectively to check the 

partial configuration information of git in the current computer:

`git config user.name`
 
`git config user.email`

And, the account name and email address of github can be 

configured separately:
 
`git config user.name "Sofija_Personal_GitHub"`
 
`git config user.email "sofijapersonal@gmail.com"`

To view the specific configuration information of the current Repository:

`git config --list`

Now, add the file `README.md` that needs to be updated to the local git repository:
 
`git add README.md`
 
Please notice: `git add/rm <file>` run every-time while changing files.
 
Never forget check if the file to be uploaded is correct:

`git status`

Record this submission:
 
`git commit -m "Create README.md"`
 
Once run `git add/rm <file>`, must run `git commit -m "XXXX"`.

It's time to create `main` branch, git workspace and move from `master` branch 

to `main` branch:
 
`git branch -M main`
 
`git branch -M main` only run once, or `git branch -M other-branch`.

Associate a remote library command. Fill in my github repository (repository) 

after git@. After creating the repository in github, there are links to `http` 

and `ssh`. `Origin` is the name I gave to this repository and can be customized.
 
`git remote add origin git@sofija_personal-github.com:SofijaPersonal/hello-world-debug-vscode.git`
 
 "`git remote add origin ssh-url`" is to connect between local repository and
 
 remote repository, only run once.
 
 Query whether the connection is successful: 
 
 `git remote -v`
 
 But if you remote add Wrong address via url using "`git remote add origin ssh-url`" 
 
 or you want to change the url address, you could use this command to 
 
 change the `ssh-url` to the target address：
 
 `git remote set-url origin ssh-url`
 
 eg:
 
 `git remote set-url origin git@sofija_personal-github.com:SofijaPersonal/hello-world.git`
 
 Mention the main branch to the remote github repository:
 
 `git push -u origin main`
 
 "`git push -u origin main`" or "`git push`" run every-time once "`git add/rm <file>`", 
 
 or run `git push -u origin other-branch`.

Update Nov 21 2022 EST 21:04

If you use `git push -u origin main`  to mention the main branch to the remote
 
github repository, that may generate the [problem](https://stackoverflow.com/questions/12940626/github-error-message-permission-denied-publickey):

   Permission denied (publickey).
   fatal: Could not read from remote repository.

   Please make sure you have the correct access rights
   and the repository exists.

To fix the upstairs problem, firstly, using `Git` try to connect the `GitHub`

via `ssh` again, e.g: `ssh -T git@sofija_personal-github.com`.

Also, `GitLab` or `Bitbucket` do the same.

Just use this to fix that via `git pull --rebase && git push -u origin main`. 

Or maybe you should check the connection of your network.

Notice:

If you just use `rm file` on your local workspace with no committing that file,

then your local repository again has that file, your remote repository also has

that file. Just use `git restore <file>...` to discard changes in working 

directory, and your local workspace will display that file. Remember to check

the status of your repository's git via `git status`. Also, if you delete some

files on your local workspace but not commit those to the local repository, you

should use `git pull --no-rebase` to pull the remote repository. Finally, if

there are some code collision or conflict, you need to use some commands liking

`git merge ...`.
    


# 5.Multiple GitHub accounts

It is necessary to consider logging into multiple GitHub accounts on the 

same computer, as well as logging into the same github account on multiple 

computers.

e.g: logging in GitHub(personal), GitHub(company), Cloud(company), Cloud

(personal),Blog(personal), BitLab, Bitbucket, Azure devops... via ssh on 

a terminal.

## 5.1 Log in to the terminal and GitHub client separately：

one to log in through the terminal, and one to log in through the 

GitHub client.

## 5.2 Cancel global settings：

What if there are two GitHub accounts on the same computer?

Cancel the global setting, set the user name and password for each 

warehouse separately: cancel global;

`git config --global --unset user.name`

`git config --global --unset user.email`

And, If the corresponding git repository is not specifically configured, 

the git global configuration will be taken by default, that is, the 

default global configuration account will be used for git submission.

At this time, we need to configure different warehouses accordingly.

We can cd to the root directory of the corresponding git repository and

execute local git configuration commands.

For example, 

`/Users/marryme/Github/Personal/Starla` is the root directory of another local git 

repository hosted on the github platform. I can execute the following 

commands:

`cd /Users/marryme/Github/Personal/Starla`

`git config user.name`

`git config user.email`

If the return is empty, it means that no partial configuration has been 

performed. The account name and email address of github can be configured 

separately:

`git config user.name "Starla-Personal-GitHub"`

`git config user.email "starlapersonalgithub@example.com"`

## 5.3 Other Gits Accounts

In the same way, under different git repositories, you can configure git 

account names and git mailboxes for different platforms.

Although this seems troublesome, as long as the settings are completed, 

as long as the path of the corresponding git repository is no longer 

changed, there is no need to change the configuration.

Moreover, even if we did not cancel the default global git configuration,

After partial configuration, the latter will have a higher priority.

execute:

`git config --list`

You can view the specific configuration information of the current 

warehouse, The configuration viewed in the current warehouse directory 

is the global configuration + the partial configuration of the current 

project, When using it, the local configuration of the current warehouse 

will be used first, if not, the global configuration will be read.

Set up each repo's own user.email

`git config  user.email "sivertpersonalgitee@gmail.com"`

`git config  user.name "Sivert_Personal_Gitee"`

If there are two git accounts, they are `github@example.com` and 

`gitee@example.com`. In order to submit git, we need to set the 

corresponding ssh key, so each git account needs to create and manage 

ssh key, add public key to git platform, configure file config, verify 

ssh key.

## 5.4 References to the use of multiple Github accounts:

A.[Generating a new SSH key and adding it to the ssh-agent(Github Docs)](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)

B.[Adding a new SSH key to your GitHub account(Github Docs)](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account)

C.[How to Work with GitHub and Multiple Accounts(Github Gist)](https://gist.github.com/JoaquimLey/e6049a12c8fd2923611802384cd2fb4a)

D.[Using multiple github accounts with ssh keys(Github Gist)](https://gist.github.com/SofijaErkin/606ad4a47a59af731469c61b15b526e3)


E.[How to manage multiple Github accounts on one machine](https://learnku.com/articles/59358)




# 6.Other SSH Reference:

1.[homebrew-core/Formula/sshtrix.rb:("SSH login cracker")](https://github.com/Homebrew/homebrew-core/blob/master/Formula/sshtrix.rb)

2.[homebrew-core/Formula/sshguard.rb:("Protect from brute force attacks against SSH")](https://github.com/Homebrew/homebrew-core/blob/master/Formula/sshguard.rb)

3.[homebrew-core/Formula/ssh-vault.rb:("Encrypt/decrypt using SSH keys")](https://github.com/Homebrew/homebrew-core/blob/master/Formula/ssh-vault.rb)

4.[homebrew-core/Formula/ssh-copy-id.rb:("Add a public key to a remote machine's authorized_keys file")](https://github.com/Homebrew/homebrew-core/blob/master/Formula/ssh-copy-id.rb)

5.[homebrew-core/Formula/ssh-permit-a38.rb:("Central management and deployment for SSH keys")](https://github.com/Homebrew/homebrew-core/blob/master/Formula/ssh-permit-a38.rb)

6.[homebrew-core/Formula/git-ssh.rb:("Proxy for serving git repositories over SSH")](https://github.com/Homebrew/homebrew-core/blob/master/Formula/git-ssh.rb)

7.[homebrew-core/Formula/assh.rb:("Advanced SSH config - Regex, aliases, gateways, includes and dynamic hosts")](https://github.com/Homebrew/homebrew-core/blob/master/Formula/assh.rb)

8.[homebrew-core/Formula/openssh.rb:("OpenBSD freely-licensed SSH connectivity tools")](https://github.com/Homebrew/homebrew-core/blob/master/Formula/openssh.rb)

9.[homebrew-core/Formula/stormssh.rb:("Command-line tool to manage your ssh connections")](https://github.com/Homebrew/homebrew-core/blob/master/Formula/stormssh.rb)

# 7.Others English References:

1.[Your first time with git and github](https://kbroman.org/github_tutorial/pages/first_time.html)

2.[Set up Git](https://docs.github.com/en/get-started/quickstart/set-up-git)

3.[Start using Git on the command line](https://docs.gitlab.com/ee/gitlab-basics/start-using-git.html)

4.[How do I log in using the Git terminal?](https://stackoverflow.com/questions/57947268/how-do-i-log-in-using-the-git-terminal)

5.[How to switch git user at terminal?](https://superuser.com/questions/1064197/how-to-switch-git-user-at-terminal)

6.[Set-up Git and GitHub](https://tutorials.codebar.io/version-control/set-up/tutorial.html)

7.[An Intro to Git and GitHub for Beginners (Tutorial)](https://product.hubspot.com/blog/git-and-github-tutorial-for-beginners)

8.[Using Git with Terminal](https://guides.codepath.com/ios/Using-Git-with-Terminal)

9.[How to Install, Configure and Use GIT on Ubuntu?](https://www.geeksforgeeks.org/how-to-install-configure-and-use-git-on-ubuntu/)

# 8.Others Japanese References:

1.[Git for Windows のインストール手順](https://laboradian.com/git-installation-on-wndows/)

2.[【初心者向け】Gitのインストール方法をわかり易く解説（画面付き）](https://eng-entrance.com/git-install)

3.[Gitインストール手順＜Windows向け＞](https://sukkiri.jp/technologies/devtools/git/git_win.html)

4.[【Windows】Gitの環境構築をしよう！](https://prog-8.com/docs/git-env-win)

5.[WindowsにGitをインストールする方法](https://proengineer.internous.co.jp/content/columnfeature/6893)

6.[使い始める - Gitのインストール](https://git-scm.com/book/ja/v2/%E4%BD%BF%E3%81%84%E5%A7%8B%E3%82%81%E3%82%8B-Git%E3%81%AE%E3%82%A4%E3%83%B3%E3%82%B9%E3%83%88%E3%83%BC%E3%83%AB)

7.[Gitをインストールしてみよう！Windows/Macどちらも丁寧に解説](https://www.sejuku.net/blog/73444)

8.[WindowsにGitをインストールする手順(2021年12月更新)](https://www.curict.com/item/60/60bfe0e.html)

9.[Git のインストールと設定](https://docs.microsoft.com/ja-jp/devops/develop/git/install-and-set-up-git)

10.[はじめてでもOK！Gitをインストールする方法【初心者向け】](https://techacademy.jp/magazine/5304)

11.[【Mac】Gitの環境構築をしよう！](https://prog-8.com/docs/git-env)

12.[MacにGitをインストールする方法](https://chirashi.twittospia.com/%E6%8A%80%E8%A1%93/mac%E3%81%ABgit%E3%82%92%E3%82%A4%E3%83%B3%E3%82%B9%E3%83%88%E3%83%BC%E3%83%AB%E3%81%99%E3%82%8B%E6%96%B9%E6%B3%95/2021-02-26/)

13.[初心者でもWindowsやMacでできる、Gitのインストールと基本的な使い方](https://atmarkit.itmedia.co.jp/ait/articles/1603/31/news026_4.html)

14.[Git チュートリアル - Gitをインストールする](https://www.atlassian.com/ja/git/tutorials/install-git)

15.[GitをMacにインストールする方法](https://it-kyujin.jp/article/detail/459/)

16.[MacでGitを設定する方法](https://ichi.pro/mac-de-git-o-setteisuru-hoho-114058223710161) 

17.[MacOS】Homebrew経由でGitをインストールする方法](https://blog.cloud-acct.com/posts/u-homebrew-git-install/) 

# 9.Others Chinese References:

1.[git command line to log in to github for operation](https://www.jianshu.com/p/6e3f9e4e8e69)

2.[Use GitHub to share on the terminal](https://www.jianshu.com/p/899a2d4de88f)

3.[DevOps uses terminal to configure GitHub account on Mac](https://www.dazhuanlan.com/liyimin70s/topics/1397744)

4.[git connection github summary](https://segmentfault.com/a/1190000007466317)

5.[One computer to manage multiple Git accounts and SSH KEY](https://kukumalucn.github.io/blog/2018/08/02/%E4%B8%80%E5%8F%B0%E7%94%B5%E8%84%91%E7%AE%A1%E7%90%86%E5%A4%9A%E4%B8%AAGit%E8%B4%A6%E6%88%B7%E5%92%8CSSH-KEY/)

6.[How to manage multiple Github accounts on one machine](https://learnku.com/articles/59358)

7.[Use SSH to connect to GitHub on Mac](https://www.cxyzjd.com/article/qq_41977618/108262500)

8.[Upload files to GitHub in MacOS](https://bin-ye.com/boke/file_upload_git/)


# 10.Staying up late will lose dealing with fear

Oh shit. Northeastern young couple at home. I was so scared that I was afraid 

of being broken in and raped! Hurry up to find a job, change the house to rent.

Ok, i'm fine.

While watching pornographic videos and masturbating with hands, the brain is 

the most involved in this process. When watching pornographic videos, the 

provocative body and exposed sexual organs will cause the brain to secrete 

a large amount of dopamine.

And dopamine is a neurotransmitter, a chemical substance used to help cells 

transmit impulses. It is related to human lust and feelings, and it transmits 

excitement and happiness. In addition, dopamine is also associated with 

various addictive behaviors.

At the same time, dopamine is a dopamine receptor stimulant, which can 

excite adrenaline alpha and beta receptors, and can accelerate heart rate, 

constrict blood vessels, and raise blood pressure. If it is secreted too much,

Then it may cause the heart rate to increase, the blood pressure to rise, it 

may cause arrhythmia, paroxysmal tachycardia, paroxysmal atrial fibrillation, 

paroxysmal atrial flutter, and the patient may also experience dizziness, and 

may even occur Insomnia, dreaminess.

Dopamine appears in the forebrain and basal ganglia (Basal Ganglia). The basal 

ganglia are responsible for processing fear emotions, but because of dopamine, 

it replaces the feeling of fear.

Therefore, many people's addictive behaviors are caused by dopamine.

Excessive dopamine can also cause emotional problems, anxiety, fear and even 

mild depression. 

}
# "if 0 { ... } " for more than one lines comment.
