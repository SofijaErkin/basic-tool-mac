// Problem: How do I show a MySQL warning that just happened?
// stackoverflow: 
// https://stackoverflow.com/questions/1215692/how-do-i-show-a-mysql-warning-that-just-happened
/*
When MySQL database imports data, warnings often appear. 

These warnings are easy to be ignored. 

I suddenly want to see what the warnings are when I get to the data today.

MySQL view warning command

    show warnings;

The command is very concise, and the general warning is like this when I check it.

1.

    Warning | 1265 | Data truncated for column ‘title’ at row 1265

This warning is that the field length is not enough, 

the imported data is automatically cropped by the system.

2.

    | Warning | 1366 | Incorrect string value: ‘\xB5\xDA\xB6\xFE\xBD\xEC...‘ for column ‘Journal title’ at row 1444 |

This is the wrong character set of the data. 

For the second one, you need to modify the character set of the database or the txt encoding format of the imported data.

3.

    | Warning | 1366 | Incorrect integer value: ‘‘ for column ‘work number’ at row 13 |

This is to insert empty data, if the field allows null values, you can ignore these warnings.
4.

    | Warning | 1262 | Row 11 was truncated; it contained more data than there were input columns |

This is a redundant column of imported data.

The MySQL warning is easy to understand, and it is easy to modify the table after the warning message.
*/
