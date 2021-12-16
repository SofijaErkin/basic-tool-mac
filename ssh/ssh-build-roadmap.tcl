# This is a roadmap of building ssh vi vim and VS Code on mac.
# '#' just for only one line comment
if 0 {

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

}
# "if 0 { ... } " for more than one lines comment.
