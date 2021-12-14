// This is a roadmap for downloading MySQL on macOS.
// RoadMap: MySQL manually(mac).
//
//
/*
1.download

There are three ways to install MySQL on MacOS: Install using Docker; Use 

Homebrew to run brew install mysql to install; Use the installation package 

to install.

I use the installation package to install, because this installation method 

is more intuitive and controllable, such as the choice of MySQL version and 

password configuration, so let's start next.

home website: https://www.mysql.com/downloads/

download website: https://downloads.mysql.com/archives/community/


It is not recommended to download the latest version, whether you are a 

student or an industrial industry.

Each system version of Mac has its suitable mysql version sequence. For 

example, macOS 10.12 can install mysql version from 5.7.16 to 5.7.22.

Therefore, in the mysql download page, my Product Version chooses 5.7.18, 

of course the Operating System is macOS, and the installation package 

selection is macOS 10.12 (x86, 64-bit), DMG Archive, click download directly.






Others reference：
1.homebrew-core/Formula/mysql.rb:
https://github.com/Homebrew/homebrew-core/blob/master/Formula/mysql.rb
2.homebrew-core/Formula/mysql@5.7.rb:
https://github.com/Homebrew/homebrew-core/blob/master/Formula/mysql@5.7.rb
*/
