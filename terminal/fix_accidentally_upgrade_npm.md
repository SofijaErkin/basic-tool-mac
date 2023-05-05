# Fix Accidentally Upgrade NPM

This is a book about [the question of stackoverflow](https://stackoverflow.com/questions/60035154/npm-is-known-not-to-run-on-node-js-v9-2-1).

I also meet the same question.

I've just install `nvm` via `git` during configuring my work space, and then using `nvm`installed `node`.

The `Git`installed version `nvm 0.31.1', `node v13.0.1` with its `npm 6.12.0`.

The `nvm` or `node` work ok!

Also, I accidentally did use `Homebrew` install another `node` that I didn't realize later.

The `Homebrew` installed version `node 17.9.0` with its `npm 8.5.5`.

And the `node` work ok!

You know I need `web-ext` to launches Firefox and installs the extension automatically. 

So, I use `npm` to install `web-ext`, but the `web-ext` requires the current LTS (long-term support) versions of `NodeJS`, then I have to upgrade `npm` that I do not make sense of the requirement of `web-ext`.(I should install another `LTS` version of `NodeJS` because `node v13.0.1` or `node 17.9.0` are not the current `LTS` version of `NodeJS`, but this place I accidentally upgrade the version of `npm` to recent ones)

Using command `npm install -g npm@latest` update my `npm` from `8.5.5` to `9.6.2`, but `npm 9.6.2` do not support `node v13.0.1` or `node 17.9.0`, and the terminal prompt:

    ERROR: npm v9.6.2 is known not to run on Node.js v13.0.1. You'll need to upgrade
    to a newer Node.js version in order to use this version of npm. This version of
    npm supports the following node versions: `^14.17.0 || ^16.13.0 || >=18.0.0`. You
    can find the latest version at https://nodejs.org/.

    ERROR:
    ~/.nvm/versions/node/v13.0.1/lib/node_modules/npm/lib/utils/exit-handler.js:21
      const hasLoadedNpm = npm?.config.loaded
                           ^
    SyntaxError: Unexpected token '.'
        at wrapSafe (internal/modules/cjs/loader.js:891:16)
        at Module._compile (internal/modules/cjs/loader.js:941:27)
        at Object.Module._extensions..js (internal/modules/cjs/loader.js:1011:10)
        at Module.load (internal/modules/cjs/loader.js:822:32)
        at Function.Module._load (internal/modules/cjs/loader.js:730:14)
        at Module.require (internal/modules/cjs/loader.js:864:19)
        at require (internal/modules/cjs/helpers.js:74:18)
        at module.exports (~/.nvm/versions/node/v13.0.1/lib/node_modules/npm/lib/cli.js:81:23)
        at Object.<anonymous> (~/.nvm/versions/node/v13.0.1/lib/node_modules/npm/bin/npm-cli.js:2:25)
        at Module._compile (internal/modules/cjs/loader.js:971:30)
    nvm is not compatible with the npm config "prefix" option: currently set to ""
    Run `npm config delete prefix` or `nvm use --delete-prefix v13.0.1 --silent` to unset it.

then i check the version of `node` and `npm` via `node --version && npm --version`:

    17.9.0
    9.6.2
Even I change the soft link `node`, `npm`, `npx` under `/usr/local/bin` and `node.1`, `npm.1`, `npx.1` under `/usr/local/share/man/man1` from the directory of `Homebrew` installed `node` to the directory of `Git` installed `node`, the version of `node` and `npm` shows 

    v13.0.1 
    8.5.5

that I check using terminal, also, the terminal displace the same prompt:

    ERROR: npm v9.6.2 is known not to run on Node.js v13.0.1. You'll need to upgrade
    to a newer Node.js version in order to use this version of npm. This version of
    npm supports the following node versions: `^14.17.0 || ^16.13.0 || >=18.0.0`. You
    can find the latest version at https://nodejs.org/.

    ERROR:
    ~/.nvm/versions/node/v13.0.1/lib/node_modules/npm/lib/utils/exit-handler.js:21
      const hasLoadedNpm = npm?.config.loaded
                           ^
    SyntaxError: Unexpected token '.'
        at wrapSafe (internal/modules/cjs/loader.js:891:16)
        at Module._compile (internal/modules/cjs/loader.js:941:27)
        at Object.Module._extensions..js (internal/modules/cjs/loader.js:1011:10)
        at Module.load (internal/modules/cjs/loader.js:822:32)
        at Function.Module._load (internal/modules/cjs/loader.js:730:14)
        at Module.require (internal/modules/cjs/loader.js:864:19)
        at require (internal/modules/cjs/helpers.js:74:18)
        at module.exports (~/.nvm/versions/node/v13.0.1/lib/node_modules/npm/lib/cli.js:81:23)
        at Object.<anonymous> (~/.nvm/versions/node/v13.0.1/lib/node_modules/npm/bin/npm-cli.js:2:25)
        at Module._compile (internal/modules/cjs/loader.js:971:30)

Because the globe `npm` is `9.6.2`, this time the `npm` of `Git` installed `node v13.0.1` is `9.6.2`. 

In order to use the `node v13.0.1`, I need to uninstall `node v13.0.1` including updating `npm 9.6.2` and reinstall `node 13.0.1` including source `npm 6.12.0`.

I do not want to upgrade to the latest or `LTS` version of `NodeJS` and I want to use the `node v13.0.1` or `node 17.9.0`.

The installed module `npm` paths are all `/usr/local/lib/node_modules`, so I need to let the current `npm 9.6.2` work.

First, I installed the `LTS` version of `NodeJS` to let the `npm 9.6.2` work, via command `nvm install v18.1.0`, and check the version of `node` and `npm`:

    v18.1.0
    8.8.0
Second, uninstall that `node v13.0.1` including updating `npm 9.6.2` via command: `nvm uninstall v13.0.1`;

Third, reinstall that `node v13.0.1` with its source `npm 6.12.0` via command `nvm install v13.0.1`;

Four, uninstall that `node v18.1.0` via command `nvm uninstall v18.1.0`;

Five, check the version of `node` and `npm` via command `node --version && npm --version`:

    v13.0.1
    6.12.0
Six, check the controlled `node` version of `nvm` via command `nvm ls`:

    ->      v13.0.1
         system
    default -> node (-> v13.0.1)
    node -> stable (-> v13.0.1) (default)
    stable -> 13.0 (-> v13.0.1) (default)
    iojs -> N/A (default)

Seven, check to use the `npm`via command `npm --help`:

    Usage: npm <command>

    where <command> is one of:
        access, adduser, audit, bin, bugs, c, cache, ci, cit,
        clean-install, clean-install-test, completion, config,
        create, ddp, dedupe, deprecate, dist-tag, docs, doctor,
        edit, explore, get, help, help-search, hook, i, init,
        install, install-ci-test, install-test, it, link, list, ln,
        login, logout, ls, org, outdated, owner, pack, ping, prefix,
        profile, prune, publish, rb, rebuild, repo, restart, root,
        run, run-script, s, se, search, set, shrinkwrap, star,
        stars, start, stop, t, team, test, token, tst, un,
        uninstall, unpublish, unstar, up, update, v, version, view,
        whoami

    npm <command> -h  quick help on <command>
    npm -l            display full usage info
    npm help <term>   search for help on <term>
    npm help npm      involved overview

    Specify configs in the ini-formatted file:
        ~/.npmrc
    or on the command line via: npm <command> --key value
    Config info can be viewed via: npm help config

    npm@6.12.0 ~/.nvm/versions/node/v13.0.1/lib/node_modules/npm

End!

Refer:

1.[User easy ways answers about this(StackOverflow)][1].

2.[User Sobogun Ifeoluwa answers about this(StackOverflow)][2].

3.[Previous Releases of Node.js(NodeJS ORG)][3].

4.[Using nvm manage differ node(Chinese Blog)][4].

5.[npm does not support Node.js v10.19.0 #3644(GitHub NodeJS Issues)][5].


  [1]: https://stackoverflow.com/a/73497022/10846570
  [2]: https://stackoverflow.com/a/73384734/10846570
  [3]: https://nodejs.org/en/download/releases
  [4]: https://www.runoob.com/w3cnote/nvm-manager-node-versions.html
  [5]: https://github.com/nodejs/help/issues/3644