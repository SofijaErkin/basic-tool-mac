# This is a roadmap of building ssh vi vim and VS Code on mac.
# '#' just for only one line comment
if 0 {

The better way to build ssh for logging in github, gitlab... via git is that

just search "terminal log in github" by Google search engine.

A better way to learn the terminal to log in to github is to read the 

official github related documents.

first search just using native language,

second search just using english,

third search just using third language,

As the saying goes, well-informed.

Secure Shell (SSH) is a cryptographic network protocol for operating network 

services securely over an unsecured network.

Typical applications include remote command-line, login, and remote command 

execution, but any network service can be secured with SSH. 

SSH provides a secure channel over an unsecured network by using a client

–server architecture, connecting an SSH client application with an SSH server.

The protocol specification distinguishes between two major versions, referred 
 
to as SSH-1 and SSH-2. 

The standard TCP port for SSH is 22. 

SSH is generally used to access Unix-like operating systems, but it can also 

be used on Microsoft Windows.

Windows 10 uses OpenSSH as its default SSH client and SSH server.

SSH was designed as a replacement for Telnet and for unsecured remote shell 

protocols such as the Berkeley rsh and the related rlogin and rexec protocols. 

Those protocols send sensitive information, notably passwords, in plaintext, 

rendering them susceptible to interception and disclosure using packet 

analysis.

The encryption used by SSH is intended to provide confidentiality and 

integrity of data over an unsecured network, such as the Internet. 

The most effective and safest way to build SSH is to refer to the search 

engine to practice, and then use the search engine to find and solve 

the problem.

It is necessary to consider logging into multiple GitHub accounts on the 

same computer, as well as logging into the same github account on multiple 

computers.

e.g: logging in github(personal), github(company), cloud(company), cloud

(personal),blog(personal), gitlab, gitbucket, azure devops... via ssh on 

a terminal.

Multiple GitHub accounts can be considered: 

1.Log in to the terminal and GitHub client separately：

one to log in through the terminal, and one to log in through the 

GitHub client.

2.Cancel global settings：

What if there are 2 GitHub accounts on the same computer?

Cancel the global setting, set the user name and password for each 

warehouse separately: cancel global;

git config --global --unset user.name

git config --global --unset user.email


And, If the corresponding git repository is not specifically configured, 

the git global configuration will be taken by default, that is, the 

default global configuration account will be used for git submission.

At this time, we need to configure different warehouses accordingly.

We can cd to the root directory of the corresponding git repository and

execute local git configuration commands.For example, 

/Users/XXX/github/DemoProject is the root directory of a local git 

repository hosted on the github platform. We can execute the following 

commands:

cd /Users/XXX/github/DemoProject

git config user.name

git config user.email

If the return is empty, it means that no partial configuration has been 

performed. The account name and email address of github can be configured 

separately:

git config user.name "github account name"

git config user.email "github@example.com"

In the same way, under different git repositories, you can configure git 

account names and git mailboxes for different platforms.

Although this seems troublesome, as long as the settings are completed, 

as long as the path of the corresponding git repository is no longer 

changed, there is no need to change the configuration.

Moreover, even if we did not cancel the default global git configuration,

After partial configuration, the latter will have a higher priority.

execute:

git config --list

You can view the specific configuration information of the current 

warehouse, The configuration viewed in the current warehouse directory 

is the global configuration + the partial configuration of the current 

project, When using it, the local configuration of the current warehouse 

will be used first, if not, the global configuration will be read.

Set up each repo's own user.email

git config  user.email "xyz@xyz.com"

git config  user.name "xyz"


Other reference:
1.homebrew-core/Formula/sshtrix.rb:
("SSH login cracker")
https://github.com/Homebrew/homebrew-core/blob/master/Formula/sshtrix.rb

2.homebrew-core/Formula/sshguard.rb:
("Protect from brute force attacks against SSH")
https://github.com/Homebrew/homebrew-core/blob/master/Formula/sshguard.rb

3.homebrew-core/Formula/ssh-vault.rb:
("Encrypt/decrypt using SSH keys")
https://github.com/Homebrew/homebrew-core/blob/master/Formula/ssh-vault.rb

4.homebrew-core/Formula/ssh-copy-id.rb:
("Add a public key to a remote machine's authorized_keys file")
https://github.com/Homebrew/homebrew-core/blob/master/Formula/ssh-copy-id.rb

5.homebrew-core/Formula/ssh-permit-a38.rb:
("Central management and deployment for SSH keys")
https://github.com/Homebrew/homebrew-core/blob/master/Formula/ssh-permit-a38.rb

6.homebrew-core/Formula/git-ssh.rb:
("Proxy for serving git repositories over SSH")
https://github.com/Homebrew/homebrew-core/blob/master/Formula/git-ssh.rb

7.homebrew-core/Formula/assh.rb:
("Advanced SSH config - Regex, aliases, gateways, includes and dynamic hosts")
https://github.com/Homebrew/homebrew-core/blob/master/Formula/assh.rb

8.homebrew-core/Formula/openssh.rb:
("OpenBSD freely-licensed SSH connectivity tools")
https://github.com/Homebrew/homebrew-core/blob/master/Formula/openssh.rb

9.homebrew-core/Formula/stormssh.rb:
("Command-line tool to manage your ssh connections")
https://github.com/Homebrew/homebrew-core/blob/master/Formula/stormssh.rb

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
