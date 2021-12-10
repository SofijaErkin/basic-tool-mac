// This is a roadmap for building docker via vim and VS Code in mac.
//
/*
The main roadmap

Other reference:
1.homebrew-core/Formula/docker.rb:
("Pack, ship and run any application as a lightweight container")
https://github.com/Homebrew/homebrew-core/blob/master/Formula/docker.rb

2.homebrew-core/Formula/docker-ls.rb:
("Tools for browsing and manipulating docker registries")
https://github.com/Homebrew/homebrew-core/blob/master/Formula/docker-ls.rb

3.homebrew-core/Formula/dockerize.rb:
("Utility to simplify running applications in docker containers")
https://github.com/Homebrew/homebrew-core/blob/master/Formula/dockerize.rb

4.homebrew-core/Formula/docker-gen.rb:
("Generate files from docker container metadata")
https://github.com/Homebrew/homebrew-core/blob/master/Formula/docker-gen.rb

5.homebrew-core/Formula/docker2aci.rb:
("Library and CLI tool to convert Docker images to ACIs")
https://github.com/Homebrew/homebrew-core/blob/master/Formula/docker2aci.rb

6.homebrew-core/Formula/docker-slim.rb
("Minify and secure Docker images")
https://github.com/Homebrew/homebrew-core/blob/master/Formula/docker-slim.rb

7.homebrew-core/Formula/docker-clean.rb :
( "Clean Docker containers, images, networks, and volumes")
https://github.com/Homebrew/homebrew-core/blob/master/Formula/docker-clean.rb

8.homebrew-core/Formula/docker-swarm.rb:
("Turn a pool of Docker hosts into a single, virtual host")
https://github.com/Homebrew/homebrew-core/blob/master/Formula/docker-swarm.rb

9.homebrew-core/Formula/docker-squash.rb:
("Docker image squashing tool")
https://github.com/Homebrew/homebrew-core/blob/master/Formula/docker-squash.rb

10.homebrew-core/Formula/docker-compose.rb:
( "Isolated development environments using Docker")
https://github.com/Homebrew/homebrew-core/blob/master/Formula/docker-compose.rb

11.homebrew-core/Formula/docker-machine.rb:
("Create Docker hosts locally and on cloud providers")
https://github.com/Homebrew/homebrew-core/blob/master/Formula/docker-machine.rb

12.homebrew-core/Formula/docker-completion.rb:
("Bash, Zsh and Fish completion for Docker")
https://github.com/Homebrew/homebrew-core/blob/master/Formula/docker-completion.rb

13.homebrew-core/Formula/docker-machine-nfs.rb:
("Activates NFS on docker-machine")
https://github.com/Homebrew/homebrew-core/blob/master/Formula/docker-machine-nfs.rb

14.homebrew-core/Formula/docker-credential-helper.rb:
("macOS Credential Helper for Docker")
https://github.com/Homebrew/homebrew-core/blob/master/Formula/docker-credential-helper.rb

15.homebrew-core/Formula/docker-machine-parallels.rb:
("Parallels Driver for Docker Machine")
https://github.com/Homebrew/homebrew-core/blob/master/Formula/docker-machine-parallels.rb

16.homebrew-core/Formula/docker-compose-completion.rb:
("Completion script for docker-compose")
https://github.com/Homebrew/homebrew-core/blob/master/Formula/docker-compose-completion.rb

17.homebrew-core/Formula/docker-machine-completion.rb:
("Completion script for docker-machine")
https://github.com/Homebrew/homebrew-core/blob/master/Formula/docker-machine-completion.rb

18.homebrew-core/Formula/docker-machine-driver-vultr.rb:
("Docker Machine driver plugin for Vultr Cloud")
https://github.com/Homebrew/homebrew-core/blob/master/Formula/docker-machine-driver-vultr.rb

19.homebrew-core/Formula/docker-machine-driver-xhyve.rb:
("Docker Machine driver for xhyve")
https://github.com/Homebrew/homebrew-core/blob/master/Formula/docker-machine-driver-xhyve.rb

20.homebrew-core/Formula/docker-credential-helper-ecr.rb:
("Docker Credential Helper for Amazon ECR")
https://github.com/Homebrew/homebrew-core/blob/master/Formula/docker-credential-helper-ecr.rb

21.homebrew-core/Formula/docker-machine-driver-vmware.rb:
("VMware Fusion & Workstation docker-machine driver")
https://github.com/Homebrew/homebrew-core/blob/master/Formula/docker-machine-driver-vmware.rb

22.homebrew-core/Formula/docker-machine-driver-hyperkit.rb:
("Docker Machine driver for hyperkit")
https://github.com/Homebrew/homebrew-core/blob/master/Formula/docker-machine-driver-hyperkit.rb

23.homebrew-core/Formula/lazydocker.rb:
("Lazier way to manage everything docker")
https://github.com/Homebrew/homebrew-core/blob/master/Formula/lazydocker.rb

24.https://github.com/shadowsocks/shadowsocks-libev:
("Libev port of shadowsocks")
https://github.com/Homebrew/homebrew-core/blob/master/Formula/shadowsocks-libev.rb


/*
