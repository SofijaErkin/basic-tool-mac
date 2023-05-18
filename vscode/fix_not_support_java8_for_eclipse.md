# Fix Not Support Java8 For The Newest Eclipse On MacOS

## BackUp

[GitHub Project](https://github.com/SofijaErkin/basic-tool-mac/tree/main/vscode).

[GitHub Gist](https://gist.github.com/SofijaErkin/9f63ef9c7e2ea6859abf130868af1aaf).

## RoadMap

1.Click the Newest `Eclipse Installer`, e.g: the newest `The Eclipse Installer`

`2023‑03`, move the "`Eclipse Installer.app`" into the `Applications`;

2.Find and click "Eclipse Installer" APP via `LaunchPad`, choose `Open` button

while prompt "`“Eclipse Installer.app” is an app downloaded from the Internet`"

"`Are you sure you want to open it?`";

3.I choose the version "Eclipse IDE for Enterprise java and web" to continue Be

-cause I will use `Spring`, please choose the version "Eclipse IDE for Java De

-velopers" to continue if you only `Java` Developer, click the "`!`" button on

the right top display windows, click the "`Advanced Mode`" menu which prompt on

the left of "`Eclipse Installer`" display window;

4.Click the "`Up and down`" button on the right of  "`Product Version`" menu,

choose that version of "Product Version" which let the below of "`Product`"

"`Version`" menu shows "`Java 1.8+ VM`", e.g: the recent version of "Product

Version" which support "`Java 1.8`" is "2020-06", and "`Java 11+ VM`" is

"`2022-06`";

5.Then click the "`Up and down`"button on right of "`Java 1.8+ VM`", choose and

click "`/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home`",

and then `Next`.

Notice: please choose `Yes` while installing the old version Eclipse if prompt the below.

    The following URI could not be download:
    https://download.eclipse.org/technology/epp/packages/2020-06/artifacts.jar
    A local cached version that is 1065 days old is available. Would you like
    to use locally cached versions, when available, to continue provisioning?

6.If `Eclipse` APP disappeared after "`Eclipse Installer`", which means that

you can not find out the `Eclipse` APP from the `LaunchPad`, just go to the

installed directory of "`Eclipse Installer`", e.g: my "`Java 1.8+ VM`" was

under "`/Users/user/jee-2020-06`", then you will find the `Eclipse` APP, just

move the `Eclipse` APP  to the directory `~/Desktop`, then directly draw into

`/Application`.

7.A Test of Project Demo.

    Create Project: click "Create a new Java EE Web Project", input Project name
    e.g:"softTest1", then click "Finish" Button.
    Create Package: right-click new-created Project name "softTest1"->new->
    Package->OK/adjust Package name+OK
    Create Class: right-click new-created Package name "softTest1"->new->class
    rename the name of prompted Class "Name", e.g: "HelloWorld", then->Finish
    Code Class file: input code, click Running, then output witness under the 
    Console

8.Install Plugin for Eclipse

    (Download remote Tomcat Plugin ZIP, the newest version 9.1.6)
    https://sourceforge.net/projects/tomcatplugin/
    (or here) https://marketplace.eclipse.org/content/eclipse-tomcat-plugin
    (more recent version 9.1.2)
    https://files.cnblogs.com/files/godwithus/net.sf.eclipse.tomcat.updatesite-2016-09-21.zip

    (Help(Should be the newest Eclipse IDE)) button -> Install New Software...
    -> Add -> Local-> give a Repository name-> OK -> click the name[]-> always
    Next-> accept the Licenses -> Finish -> waiting for Eclipse auto-installing
    Software(A long long time about more than an hour!)
    But->
    An error occurred while collecting items to be installed
    session context was:(profile=_Users_yq_jee-2020-06_Eclipse.app_Contents_Eclipse, phase=org.eclipse.equinox.internal.p2.engine.phases.Collect, operand=, action=).
    Problems downloading artifact: osgi.bundle,org.eclipse.equinox.common,3.17.100.v20230202-1341.
    Error reading signed content:/var/folders/zs/_m5zmn613_vgyyszpxwcyx980000gn/T/signatureFile3901322827202294976.jar
    An error occurred while processing the signatures for the file: /var/folders/zs/_m5zmn613_vgyyszpxwcyx980000gn/T/signatureFile3901322827202294976.jar
    Fixed the upstairs error:
    Reinstall Eclipse and Tomcat Plugin for Eclipse
    If your Eclipse's Preference haven't "Server", the using "help->Install New
    Software..." input "https://download.eclipse.org/releases/kepler/" in Work
    with

    (Add local server) Eclipse->Preferences->Server->RuntimeEnvironments->Add->
    choose yourself version->Browse local directory->choose local JRE->Finish->
    Apply and close
    (Startup Tomcat using Eclipse) Eclipse->Window->Show View->Other...->Server
    ->Servers->Open-> click "No servers are available. Click this link to..."->
    Finish-> click "Start the server" or "\-ComR"
    (Power off Tomcat using Eclipse) COnsole -> red button "Terminal"  
    (Test Tomcat server) goTo http://localhost:8080/ or http://127.0.0.1:8080/

    (Start up Tomcat server) cd /usr/local/tomcat/bin/ && ./startup.sh
    (Power off Tomcat server) cd /usr/local/tomcat/bin/ && ./shutdown.sh
    (Check the usage of Port) sudo lsof -i :8080
    (Kill the target port server) sudo kill -9 pid
