# Problem:MySQL root password change
# stackoverflow:
# https://stackoverflow.com/questions/7534056/mysql-root-password-change

:<<!
Now just use:

    SET PASSWORD FOR <user> = '<plaintext_password>'

Because `'SET PASSWORD FOR <user> = PASSWORD('<plaintext_password>')'` is deprecated and will be removed in a future release.(Warning in 04/12 2021)

Please use `SET PASSWORD FOR <user> = '<plaintext_password>'` instead.

Update 04/12 2021 AM 2:22:07  UTC/GMT -5 hours.




Use the following statement to modify directly in the mysql command line:

    mysql> SET PASSWORD FOR'root'@'localhost' = PASSWORD('newpass');

or

1. The terminal enters the bin directory of MySQL

    cd /usr/local/mysql/bin

2. Open MySQL

    mysql -u root -p

3. At this time you can use your default password

4. Perform operations in MySQL at this time

    show databases;

5. You will be prompted to reset the root user password.

So how to reset the root password? I checked a lot of information but it didn’t take effect.

Including entering to modify the database in safe mode, using the mysqladmin command:

"`Mysqladmin -u root password"your-new-password"`" 
etc.,
Will not work.

The correct steps are as follows:
1. It is still in the cd `/usr/local/mysql/bin/` directory
2. `sudo su`

After entering, you will be asked to enter your computer password.

When you enter it, nothing is displayed. After you enter it, press Enter

Then press enter

3. Cross the authorization verification
 

    sh-3.2# ./mysqld_safe --skip-grant-tables &

If the execution of the command is stopped, and the execution has been completed at this time, 

press Enter directly, and then exit to exit:

    sh-3.2# exit

4. Re-enter MySQL at this time, no -p parameter, no password

    ./mysql -u root

5. Select the database MySQL (here MySQL refers to a database in MySQL, 

there are other databases in MySQL, you can view it through show databases;)

    use mysql;

6. Update the password of the root user in the database table:


    update user set authentication_string=‘123456’ where User='root';


Note: The password field here is `authentication_string`, 

not the `password` circulated on the Internet.

It is estimated that MySQL was updated later.

Re-enter MySQL and use the password you just set, is it all right?

Because you have just set to bypass the authorization authentication, 

you can log in to MySQL directly without a password. 

My stupid way is to restart the computer and log in to MySQL with the password again to see if the modification is effective;

!
