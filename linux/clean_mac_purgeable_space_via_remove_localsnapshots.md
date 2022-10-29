# The purgeable space on macOS

## 1.Question

I have gone to bed before using `TimeMachine` to backup my mac and accidentally

clicked the `Back Up Automatically` button on the setting of `Time Machine`

yesterday night. I have found my mac only has `60 GB` free space on Disk

Utility this morning. But the Storage tab of my mac shows `100 GB` free space.

What happens to my macbook from yesterday night to this morning?

## 2.Analysis

I do nothing about my macbook except backing up my mac. I calculate all the

usage storage of types and add to only `90+ GB` used disk, where is the other

more `90+ GB` used space going to? Maybe there are some snapshots on the local

of my mac. ALso, `Disk Utility` shows `90+ GB` purgeable space. So, how to deal

with that purgeable space?

## 3.Solution

### 3.1Directly remove local snapshots

A.Enter your Time Machine Settings and cancel `Back Up Automatically` button;

B.Just log in your mac terminal;

C.Check out the list of local snapshots on your mac:

    sudo tmutil listlocalsnapshots
Then, there will output some symbol containing `Time Machine`.

D.Just directly remove via `tmutil deletelocalsnapshots XXXX-XX-XX-XXXXXX`;

When the terminal outputs `Deleted local snapshot`, that means successfully

remove that snapshots.

E.After removing your no-needed snapshots, restart or reboot your mac.

Have fun!

refer:

[macOS not showing the actual free space](https://apple.stackexchange.com/a/324443)(Ask Different).

[The solution of removing purgeable space and killing 100% usage on mac](https://blog.csdn.net/qq_41884863/article/details/99648227)(Chinese Blog).
