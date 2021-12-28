# # "# # " for one line comment
# #
# # "# [[ ... ]]" for more than one lines comment
# [[

# Git commands Manually

## 1.General commands

### To delete the local branch

`git branch --delete <name>`

As you can see the local branch is deleted.

### View the branch merge graph

`git log --graph`

press key "`q`" to Quit.

## 2.Special commands

### Fixed conflicts in uploading GitHub files

(1)Update the repository every time before uploading the repositroy, please run

`git pull`

discover Terminal:

`>error: Your local changes to the following files would be overwritten by merge:helloworld.cpp`

`>Please commit your changes or stash them before you merge.`

The error is basically a conflict. This shows that your helloworld.cpp conflicts 

with the remote, you need to submit the local modification first and then update it.

(2)Submit the local helloworld.cpp file without pushing remotely 

`git add helloworld.cpp`

`git commit -m "conflict fixed"`

(3)Update local repository 

`git pull`

discover Terminal:

`>Auto-merging helloworld.cpp`

`>CONFLICT (content): Merge conflict in helloworld.cpp`

`>Automatic merge failed; fix conflicts and then commit the result.`

After the update, (develop|MERGING) will appear on your local branch 

similar to this kind of logo.

(4)Delete functions according to prompts

Find your local helloworld.cpp file and open it.

You will find "`<<<<<<< HEAD`", "`=======`", "`>>>>>>> ae9a0f6b7e42fda2ce9b14a21a7a03cfc5344d61`" 

in the file.

This kind of mark, "`<<<<<<< HEAD`" and "`=======`" is your own code, 

"`=======`" and "`>>>>>>>>`" is modified by others Code.

Make sure to keep that part of the code, and finally delete "`<<<<<<< HEAD`", "`=======`", "`>>>>>>`"

this kind of mark, comment out the feature ("`ae9a0f6b7e42fda2ce9b14a21a7a03cfc5344d61`").

(5)Submit the local helloworld.cpp file agiain without pushing remotely

`git add helloworld.cpp`

`git commit -m "conflict fixed end"`

(6)pushing remotely

`git push`

## 3.Remote commands

### View all remote branches

`git branch -a`

or 

`git branch --all`

### View branch

`git branch`

### Create branch

`git branch <name>`

`git branch (-m) (local branch )<name>`

`-m` attribute is used to rename the branch name without affecting the branch’s history.

create branch <name>, and switch local branch to the new created branch <name>.

### Switch branch

`git checkout <name>`

### Create + switch branches

`git checkout -b <name>`

### Merge a branch into the current branch

`git merge <name>`

### Delete branch

`git branch -d <name>`

### Fetch all the branches

`git fetch`

The above command will just fetch all the remote branches to your local.

### To delete the remote branch

`git push origin --delete <name>`

As you can see the old remote is deleted.

reference:
1.homebrew-core/Formula/git.rb:
desc "Distributed revision control system"
homepage "https://git-scm.com"
sha256 "3a0755dd1cfab71a24dd96df3498c29cd0acd13b04f3d08bf933e81286db802c"
license "GPL-2.0-only"
head "https://github.com/git/git.git"
https://github.com/Homebrew/homebrew-core/blob/master/Formula/git.rb

2.homebrew-core/Formula/gitg.rb:
desc "GNOME GUI client to view git repositories"
homepage "https://wiki.gnome.org/Apps/Gitg"
sha256 "24a4aabf8a42aa2e783e1fb5996ebb3c2a82a01b9689269f1329517ef124ef5a"
https://github.com/Homebrew/homebrew-core/blob/master/Formula/gitg.rb

3.homebrew-core/Formula/gitfs.rb:
desc "Version controlled file system"
homepage "https://www.presslabs.com/gitfs"
sha256 "921e24311e3b8ea3a5448d698a11a747618ee8dd62d5d43a85801de0b111cbf3"
license "Apache-2.0"
revision 8
head "https://github.com/presslabs/gitfs.git"
https://github.com/Homebrew/homebrew-core/blob/master/Formula/gitfs.rb

4.homebrew-core/Formula/gitql.rb:
desc "Git query language"
homepage "https://github.com/filhodanuvem/gitql"
sha256 "e1866471dd3fc5d52fd18af5df489a25dca1168bf2517db2ee8fb976eee1e78a"
license "MIT"
head "https://github.com/filhodanuvem/gitql.git", branch: "main"
https://github.com/Homebrew/homebrew-core/blob/master/Formula/gitql.rb

Others:
Homebrew/homebrew-core/Formula/git
https://github.com/Homebrew/homebrew-core/find/master


]]

# #
