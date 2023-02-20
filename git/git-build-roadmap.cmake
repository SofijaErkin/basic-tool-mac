# # "# # " for one line comment
# #
# # "#[=[ ... ]=]" for more than one lines comment
#[=[

# Git commands Manually

## 1.General commands

### [Error: Cannot pull with rebase: You have unstaged changes](https://stackoverflow.com/questions/23517464/error-cannot-pull-with-rebase-you-have-unstaged-changes)

Do `git status`, this will show you what files have changed. Since you stated that you 

don't want to keep the changes you can do `git checkout -- <file name>` or `git reset` 
  
`--hard` to get rid of the changes.

For the most part, `git` will tell you what to do about changes. For example, your error 

message said to git stash your changes. This would be if you wanted to keep them. After 

pulling, you would then do git stash pop and your changes would be reapplied.

`git status` also has how to get rid of changes depending on if the file is staged for 

commit or not.

### Add changed file of being git added and all the workspace file to 

### local repository without being deleted file

`git add -A`

or

`git add --all`

It is a collection of the following two functions "`git add .`" and 

"`git add -u`".

### Add all the workspace file to local repository without being deleted file

`git add .`

Monitor the status tree of the work area, and use it to submit all changes 

during work to the temporary storage area, including file content modification

(modified) and new files (new), but not including deleted files.

### Add the changed file of already been git added to local repository 

`git add -u`

or

`git add --update`

That means:

Only monitor files that have been added (tracked files), and submit the 

modified files to the temporary storage area. 

Will not submit new files (untracked file)

Or

Update the index just where it already has an entry matching` <pathspec>`. 

This removes as well as modifies index entries to match the working tree, 

but adds no new files.

If no `<pathspec>` is given when `-u` option is used, all tracked files 

in the entire working tree are updated (old versions of Git used to limit 

the update to the current directory and its subdirectories).


### Delete local repository file

`git rm <file>`

`git commit -m "delete <file>"`

If adding use "`git push`", that will delete both local and remote repository files.

Note:

`rm <file>`

means delete the workspace file.

Notices:

`rm -r directory_name_/*`

means: delete all the files under the directory_name_.

### To delete the local branch

`git branch --delete <name>`

As you can see the local branch is deleted.

### View the branch merge graph

`git log --graph`

press key "`q`" to Quit.

## 2.Special commands

### GIT PUSH ERROR

`! [rejected] master -> master (fetch first) error: failed to push some refs to 'git@`

or

`! [rejected] main -> main (fetch first) error: failed to push some refs to 'git@`

or

`! [rejected] your_branch -> your_branch (fetch first) error: failed to push some refs to 'git@`

This problem occurs because the `README.md` file in github is not in the local code directory. 

You can use the following command to merge the code:

Firstly

`git pull --rebase origin master`

or

`git pull --rebase origin main`

or 

`git pull --rebase origin your_branch`

Then

`git push origin master`

or 

`git push origin main`

or 

`git push origin your_branch`

### Avoid two independent branches from generating merge commits

`git pull --rebase`

`git pull --rebase`: During execution, each commit in the local 

current branch will be cancelled, and then the local current 

branch will be updated to the latest "origin" branch.

`git pull` == `git fetch` + `git merge`;

`git pull --rebase` == `git fetch` + `git rebase`;

`git fetch`: Get the latest version from remote to local, will not 

automatically merge branches.

`git rebase`: Redefine (re) the role of the starting point (base), 

that is, redefine the status of the branch's version library.

If there are merge conflicts after executing `git pull --rebase`, use the 

following three methods to deal with these conflicts:

`git rebase --abort `will abandon the merge and return to the state before 

the rebase operation, and the previous commits will not be discarded;

`git rebase --skip` will discard the commits that cause conflicts 

(use with caution!!);

`git rebase --continue` merge conflicts, combined with "`git add <file>`" 

command to use and repair conflicts, to remind the developer, step by step 

if there is any conflict resolution. (Fix conflicts and then run 

"`git rebase --continue`")

After executing $`git pull --rebase`, if there is a conflict locally, after 

manually resolving the conflict, use the "`git add`" command to update the 

index of the content, and then just execute:

$ `git rebase --continue` can linearly connect the local branch and the remote

branch, and then exit and return to the main branch after correctness.

Note: In general, there is no problem in checking after modification, use 

`rebase continue` to merge conflicts.

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

## 4.Command Mistakes

If I use the command `git pull && git push --rebase` to push the local 

repository into remote, terminal will prompt just liking below

    error: unknown option `rebase'
    usage: git push [<options>] [<repository> [<refspec>...]]

Why I use that command mistake, I just want to git pull and rebase the differ

from remote repository into local. I find I forget how to the command "git

pull" and "git push" via refering the below

    https://github.com/pyenv/pyenv-update/issues/13
I should use the command "git pull --rebase && git push".

]=]
