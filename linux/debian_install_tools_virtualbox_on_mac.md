# Tools for Debian11 via VirtualBox6.1.32 on MacOS12.3.1

Manually Install + (System Including).

    -package: not manually installed!

    +package: manually installed!

    ~package: uninstall system including, then manually installed.

    *package: manually uninstall manually installed, then use system including.

    $package: system installed.

    (package): system including.

    ((package)): installed from source.

## 1. Compiler

+(gcc);

+(gcc);

## 2. Debugger

+(GNU gdb);

## 3. Assisted Compile

+(GNU Make);

+(CMake);

## 4. SHELL

    $(GNU Bash);

    -((zsh+oh-my-zsh));

## 4.1 Assisted SHELL

    +(ShellCheck);

## 5. Version Control

$(git);

    git deps:

    libssl-dev; libghc-zlib-dev; libcurl4-gnutls-dev; libexpat1-dev; +(gettext); 
    
    $(unzip);

## 6. Language

    -(Python);

    $(Python3);

    +(Ruby);

    $(Perl);

    +(PHP);

## 7. Editor

    -(VIM);

    +(GNU Emacs);

    $(GNU nano);

## 8. Terminal Download

    $(GNU Wget);

    +(curl);
