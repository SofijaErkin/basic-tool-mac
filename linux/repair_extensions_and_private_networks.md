# Repair Extensions and Private Networks

This markdown file is to introduce the extensions for repairing the errors of

blog and the tools of private networks.

## 1.Repair Extensions

### 1.1Target the errors of comments

#### 1.1.1Program Think Blog

I've saw an error on the blog of program think recently, program think is one

chinese technology blogger, that blog do not display the comments of users, but

I have just wanted to witness the history of comments, and just found two

extensions to fix that error.

##### 1.1.1.1Fixed comments on Firefox

[The repair tool for the comments of the blogger of `Program Think`(GitHub Chinese)](https://github.com/learnthink/blog_repair).

##### 1.1.1.2Fixed comments on Chrome

[The extension to make comments of Program Think Blog come true(GitHub Chinese)](https://github.com/chonglang-TV/program-think-chrome-repair).

## 2.Private Networks Tools

### 2.1I2P

#### 2.1.1Refer

1.[I2P Release Notes](https://geti2p.net/en/download).

2.[Set Up I2P on MacOSX(GitHub Gist)](https://gist.github.com/Staxxthedan/1937277441b135f5de4f50903d065c3d).

2.[Ultimate Guide to I2p – How it differs from Tor/VPN + Setup Guide](https://www.wizcase.com/blog/understanding-the-invisible-internet-project/#6).

3.[The easy usage of I2P(Chinese Blog)](https://program-think.blogspot.com/2012/06/gfw-i2p.html#comments).

4.[Download and use the I2P(Chinese Blog)](https://deepweb007.wordpress.com/2018/04/28/i2p%E7%BD%91%E7%BB%9C-%E5%A4%A7%E8%92%9C%E8%B7%AF%E7%94%B1%E4%B8%8B%E8%BD%BD%E5%8F%8A%E4%BD%BF%E7%94%A8%E4%BB%8B%E7%BB%8D/).

5.[MacOS config the private network I2P(Chinese)](http://codelife.me/blog/2012/10/07/config-i2p-router-in-macos-x/).

#### 2.1.2System of Process

Just download and install the `I2P` on that [website](https://geti2p.net).

Just download reseed file from the reseed source [fr](https://reseed-fr.i2pd.xyz/) and [pl](https://reseed-pl.i2pd.xyz/),

and upload the reseed file on [the configuration of I2P's reseed](http://127.0.0.1:7657/configreseed),

to find other routers when you first install I2P.

If you want to browse hidden websites ('eepsites') on the I2P network, you need

to configure your browser. E.g: use `firefox` browse the I2P network, use

`chrome` to browse the other network.

#### 2.1.3Others

The home page of I2P: `http://127.0.0.1:7657/home`, and the configuration of

reseed page: `http://127.0.0.1:7657/configreseed`.

### 2.2Tor

#### 2.2.1Plain text mode

By default, composing a new email in Gmail results in an HTML email under the

hood — even if you don’t use any formatting. Luckily, it’s possible to opt-out

of that and use plain text email instead.

Please refer [this](https://mathiasbynens.be/notes/gmail-plain-text).

The japanese of the words `Plain text mode` is `平文モード`, and that french is

`mode texte brut`, and that swedish is `oformaterad text`.

#### 2.2.2Download

Computer, e.g: laptop or desktop PC, via plain text mode email refer the

[Download of Tor](https://tb-manual.torproject.org/downloading/).

Also, I do highly recommend the [GetTor](https://gettor.torproject.org/).

Notice: Linux `32bit` computer choose `i386` version, while `64bit` computer

choose `x64`.

Micro smart computer, e.g: phone or pad, via the official Tor Project website

at <https://www.torproject.org/download>.

Notice: android phone choose `aarch64` or `arm` apk, while pad choose `x86_64`

(`64bit`) or `x86`(`32bit`) apk.

#### 2.2.3System of process

Check whether you are in `Tor`: <https://check.torproject.org/>. Using `Tor`

show green right onion, while no in `Tor` shows red false onion.

Install `HTTPS Forever` via [HTTP everywhere](https://www.eff.org/https-everywhere).

Create or find the configuration file `torrc` of `Tor`, edit the line of

`ExcludeNodes` into
