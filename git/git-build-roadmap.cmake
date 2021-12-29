# # "# # " for one line comment
# #
# # "# [[ ... ]]" for more than one lines comment
# [[

# Git commands Manually

## 1.General commands

### Delete local repository file

`git rm <file>`

`git commit -m "delete <file>"`

### To delete the local branch

`git branch --delete <name>`

As you can see the local branch is deleted.

### View the branch merge graph

`git log --graph`

press key "`q`" to Quit.

## 2.Special commands

### Avoid two independent branches from generating merge commits

`git pull --rebase`

### Fixed conflicts in uploading GitHub files

#### Two step(Recommended)

(1)Discard local conflict file modification after conflict occurs:

`git pull` 

(2)use remote file to overwrite local file:

`git checkout [file path]`

eg. 

`git checkout helloworld.cpp`

or

`git checkout src/main/resources/helloworld.cpp`

#### Six step 

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

#### Eight step

(1)After the conflict:

`git pull`

(2)Temporary local changes:

`git stash`

(3)Then update the code:

`git pull`

(4)View the list of temporary records:

`git stash list`

(5)Release local staging:

`git stash apply stash@{0}`

Use "`git stash apply @{x}`" to release the cache number "`x`", but 

the cache still exists in the "`list`".

(6)Conflicting files appear, find and resolve them:

reference: `####Six step`.

(7)Submit and join the index library:

`git add <file>`

`git commit -m "comment"`

(8)Push to remote

`git push`
  
### Merge Two branches

(1) Enter the directory of your needed Merging Repository

eg. cd /Users/marryme/GitHub/Personal/Sofija/hello-world-debug-vscode

(2)To view all remote branches

`git branch -a`

discover Terminal:

`* main`
  `remotes/origin/HEAD -> origin/main`
 ` remotes/origin/main`
 ` remotes/origin/matMain`
 ` remotes/origin/taylorPatch`
  `remotes/origin/DavidPatch`

(3)Switch branch

For example, there are three people developing at the same time, `matMain` was 

originally based on `taylorPatch`, but because the project has not been released, 

`taylorPatch`, `DavidPatch`, and `matMain` are all developed at the same time. Now I 

want to merge the added functions of `taylorPatch` to `matMain`;

Steps at this time: check `taylorPatch` and  `matMain`:

`git checkout taylorPatch`

`git checkout matMain`

Then execute merge based on the branch of `matMain`:

`git merge taylorPatch`

If there is no error, then directly submit the code:

`git push origin matMain`

If an error is reported, it is basically a conflict(reference:

`Fixed conflicts in uploading GitHub files`):

eg:

`CONFLICT (content): Merge conflict in src/main/bank_simulate.cc`

`Auto-merging inc/hand_make_line.h.`

`CONFLICT (content): Merge conflict in inc/hand_make_line.h`

`Automatic merge failed; fix conflicts and then commit the result.`

You need to go to the prompt file and comment out the version conflict 

automatically marked by git, and delete it according to the functions 

you need.

Then put the conflicting files `git add`, and `commit`.

For example, if you have two conflicting files, separate them with spaces 

when adding multiple files.

`git add src/main/bank_simulate.cc inc/hand_make_line.h`

Finally commit:

`git commit -m "end the conflict between two branch"`

Submit local repository:

`git push origin matMain`

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

]]

# #
