Use Python - fruit 


${File and Edit}
What is "command /dev/null 2>&1 means" --> any output of command will go to null STDOUT box and error to STDERR box 
> redirect the program’s output somewhere (In this case, something is being redirected into /dev/null)
Standard in, out and err are buit-in numbered 0, 1, and 2 in Linux / STDIN=0, STDOUT=1, STDERR=2

!$                                                   # recall previously run command
!<>                                                  # to repeat command from history
sudo !!                                              # repeat previously run command with sudo privileges
su -c "!!"                                           # repeat previously run command with sudo privileges
#] prompt                                            # you are executing commands as root
~] prompt                                            # current working directory of user
;                                                    # used for multiple commands
ls ; df                                              # two commands run one after another
ls ; df ; ll                                         # three commands will run one after another
.                                                    # hidden files, add . if want to hide a file
touch .abc                                           # create a hidden file with name abc
touch <fileName>                                     # Create an empty file
\                                                    # continuity of command
\n
',\n'
help        <command>                        # print short man page
man <command>                                # prints long description of command
help [[
type <command>                               # line description of command
whatis <command>                             # short line description
apropos        <keyword>                     # search man pages for certain keyword
apropos bash

${Using Tab}
host[Tab]                                                # quick complete search on command, file and directory 
cat t[tab]                                                # show files and directories starting with t
cd D[tab][tab]
cd -                                                         # move back to previous directory

cd !$                                                        # check previous command in history

su        root                                                # changes environment variables for the user defined in ~/.bashrc
su - root                                                # switches from current directory to home directory, check by PWD and echo $PATH
sudo - root                                                # switch from user to su with same password

<space>command                                         # Execute a command without saving it in history )
ls -l (ls -ltr or ll)                        # Permissions, Number of hardlinks, File owner, File group, File size, Modification)
ls -i                                                        # to get the inodes of each file)
ls -F                                                        # shows the file type
ls -d s*                                                # will show files starting with s within same directory
ll -hisF                                                # interesting result)
ll -hisFa --author
ll -hisFaX
ls -l                                                         # List view
ls -lt                                                         # List order by date
ls -ltr                                                 # List in reverse order by date

hostname                                                # to find the host name
hostname -I                                        # To find the name or IP related to local host                                        
ypdomainname                                        # to find the domain name
hostid                                                        # unique id assigned to host

rm <filename>                                        # will delete a file with root privileges 
rm -rf *                                                # remove all files & directories in current folder without prompting
rm -rf <myDir>                                        # it will delete non empty directory myDir and files under myDir 
rm -i <filename>                                # prompt before every removal
rm -r homeDir                                        # remove homeDir directory and files completely but prompt first
rmdir <directory-name>                        # remove directory only if empty
time
locale                                                         # Get machine locale setup - specific information
locale -a
locale -m
reset                                                        # restart the terminal session)
echo "ls -l" | at midnight                # execute a command at given time)
cat -s -n fileNameHere                        # output a file with line number and eliminate blanks

zcat <filename>                                        # view a zip file, *.gz
column fileNameHere                        # long out in columns
sort
sort -u                                                        # sort to unique values)
uniq
nl filename                                                # replacement of CAT, eleminate blank lines)
sed -n '20,40p' file_name                # show a file between line number 20 to 40)
less                                                         # view file with scroll, up and down)
source                                                         # load changes only in a file)
more                                                         # view file with pagefull view)
zmore
watch                                                         # execute a program periodically, showing output fullscreen)
$ history

shred                                                         # Overwrite the specified file repeatedly, make it harder for even very expensive hardware probing to recover the data)
$ vi /root/.bash_history                        # get the hostory of commands run by root
$ cat /usr/tideway/.bash_history


# Host Localization
su - root
$ loadkeys us
$ localectl set-keymap us
$ timedatectl set-timezone America/Chicago
# Make sure the data is correct
$ date # this should be CST/CDT

# How to find date and time stamp against command?
export HISTTIMEFORMAT='%F %T '                        # %F is YY - MM - DD, %T is H:M:S)
export HISTIGNORE='ls -l:pwd:date:'         # fiter out by ignoring history of ls commands)
unset export HISTCONTROL                                # Unset export command)

.bash_profile                                                        # to setup a behavior or scripts for user while login to system 
.bash_logout                                                        # to setup a behavior or scripts for user while logout to system

vi ~/.bash_history                                                # complete history of every command)
history -c                                                         # delete history)
sar
chkconfig --list
sysctl -a                                                                 # Display kernel parameters

diff                                                                        # compare directories or files
diff -qr var/ etc/
diff server1.list server2.list | less        # Comparison of two files in less

cmp -l A.bin B.bin                      # compare two binary file and show the difference)
vdir 
ldd /bin/ls                                                                # to find the shared and dependencies of ls command

set                                                                         # Show the variables and other settings
set | grep LOGNAME                                                # to check who is logon

which <files_Name> 
uname -a 
cat /etc/redhat-release
locale 
$ md5sum filename
$ md5sum file_name        (use the “ md5sum -c” option to check against a given file (often with a “.asc” extention) to check whether the various files are correct)
$ mkpasswd

<command> -h
<command> --help
$ info <command>                                                        # GNU info documentation)
man <command>
/usr/share/doc
/var/log/auth/auth.log or /var/log/secure        # modern Linux systems log all authentication attempts in a discrete file)
dmesg
dmesg | more                                                         # list all loaded drivers in kernel)
dmesg | grep sda                                                # list all device detected)
dmesg | grep usb, dma, tty                                # detect particular device loaded)
/var/log/dmesg                                                        # dmesg log file)
watch dmesg | tail -20                                 # watch log in real time
tail -f secure | grep 'sshd'                        # Real time log watch
dmesg -c                                                                 # clear dmesg in buffer)
$ findmnt
$ sestatus
$ getenforce
mount -t cifs -o username=<share user>,password=<share password> //WIN_PC_IP/<share name> /mnt/myDIR
mount -t cifs -o username=<share user>,password=<share password>,domain=example.com //WIN_PC_IP/<share name> /mnt
file                                                                         # determine file type

${Shutdown/reboot}
shutdown -h <time>
shutdown -h now                                                # shutdown server now)
shutdown -h 11:30                                                # the +time, in number of minutes to wait until shutting down and hh:mm specifies time on the 24hr clock format)
shutdown -h +5 "message here..."                # shutdown in 5 min and show message to logged users)
shutdown -c                                                        # cancel the shutdown process)
shutdown -P +10                                                 # power off after shutdown)
shutdown -H +10                        # halt after shutdown)
last -x shutdown                                                # show log of last shutdowns)
reboot                                                                        # reboots the server)
poweroff                                                                # same as shutdown now)
halt
$ telinit 0                                                         # change system runlevels, 0 is for halt)
fuser                                                                         # identify processes using files or sockets)
gpg                                                                         # openPGP encryption and signing tool)

${ KERNEL }
uname -r                                                                # Get the kernel version 
dmidecode -t system | grep Serial                # find the serail number

${Monitor Watch realtime logs}

/var/log/auth/auth.log or /var/log/secure                # modern Linux systems log all authentication attempts in a discrete file)
/var/log/dmesg                                                                        # dmesg log file

watch dmesg | tail -20                                                         # watch log in real time
watch "tail -n -20 /var/log/secure | grep sshd"        # watch log in real time
tail -f <file>                                                                        # watch updates continuously
tail -f 10 <file>                                                                # watch last 10 lines continuously
tail -f secure | grep 'sshd'                                        # Real time log watch
less +F secure                                                                        # Real time log watch, 'don't use with grep'

ssh -v <user>@<host>                                                        # Debug ssh session at client side

${GREP}
--------------------------------------------------------------------
# OR Operation (|) - “subexpression1|subexpression2” matches either subexpression1 or subexpression2.
[:digit:]                         Only the digits 0 to 9
[:alnum:]                         Any alphanumeric character 0 to 9 OR A to Z or a to z.
[:alpha:]                         Any alpha character A to Z or a to z.
[:blank:]                         Space and TAB characters only.
grep -e "ntpd\[[[:digit:]]\+\]" /var/log/messages.4
# M to N occurences ({m,n}) - indicates that the preceding item is matched at least m times, but not more than n times. 
grep  "^[0-9]\{1,5\}$" number
# Exact M occurence ({m}) - A Regular expression followed by {m} matches exactly m occurences of the preceding expression.
grep  "^[0-9]\{5\}$" number
# M or more occurences ({m,}) - A Regular expression followed by {m,} matches m or more occurences of the preceding expression.
grep "[0-9]\{5,\}" number
# Word boundary (\b) - \b is to match for a word boundary. \b matches any character(s) at the beginning (\bxx) and/or end (xx\b) of a word, thus \bthe\b will find the but not thet, but \bthe will find they.
grep -i "\bthe\b" comments
# Back references (\n) - Grouping the expressions for further use is available in grep through back-references. For ex, \([0-9]\)\1 matches two digit number in which both the digits are same number like 11,22,33 etc.
Match the pattern “Object Oriented” - match “object oriented” in various formats.
grep "OO\|\([oO]bject\( \|\-\)[oO]riented\)"
# Print the line “vowel singlecharacter samevowel”
grep "\([aeiou]\).\1" input
Valid IP address
egrep  '\b(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)' input


# ------ Main metacharacters ------ 
`Characters                         Search Match 
\<KEY                                 Words beginning with ‘KEY’ 
WORD\>                                 Words ending with ‘WORD’ 
^                                         Beginning of a line 
$                                         End of a line 
[ Range ]                         Range of ASCII characters enclosed 
[^c ]                                 Not the character ‘c’ 
\[                                         Interpret character ‘[‘ literally 
“ca*t”                                 Strings containing ‘c’ followed by no 'a' or any number of the letter 'a' followed by a 't' 
“.”                                 Match any single character

# ----- Extended regex -----
The main eregex’s are: +,?,() and |

# ------ List of main eregex ------ 
Characters                 Search Match 
"A1|A2|A3"                 Strings containing ‘A1’ or ‘A2’ or ‘A3’ 
"ca+t"                         Strings containing a 'ca'  followed by  any number of the letter 'a' followed by a 't' 
"ca?t"                         Strings containing ‘c’ followed by no 'a' or exactly one 'a' followed by a 't'

grep         Main Options 
-c                 count the number of lines matching PATTERN 
-f                 obtain PATTERN from a file 
-i                 ignore case sensitivity 
-n                 Include the line number of matching lines 
-v                 output all lines except those containing PATTERN 
-w                 Select lines only if the pattern matches a whole word.
-o                Print only what you matched
-P                Use Perl-style regular expressions
-E                 tells, that you want to use extended regex
-r                 grep is looking for result recursively in the folder
`
-----------------------------------------------------------------------
grep  -v "^#\|^'\|^\/\/" comments                        # search line not start with # or ' or //  
grep --color -(i)gnore_case -(r)ecursively -(w)ord_match -(c)ount_lines -(n)umber_of_line -in(v)ert -(l)ist_file_name_only "string_to_search" <in_which_folder>
grep "Linux" input.txt output.txt                         (# search string in more files)
grep -i -r --color "RC4" /etc/httpd                        (# find RC4 string on any file under httpd direcotry)
grep --color "RC4" /etc/httpd                                (# it will search a specific word and color out it in the output)
grep "Options" /etc/httpd/conf/httpd.conf        (# it will search for word options in httpd.conf file)
grep "Options" /etc/httpd/conf/httpd.conf | grep '\-Include'
grep -w 'space_left_action' /etc/audit/auditd.conf | grep -v "email"                (# exactly match the word)
grep 'paul' /etc/motd | grep 'franc,ois'        (# finds all lines that contain both `paul' AND `franc,ois')
grep 'pattern1\|pattern2' filename                        (# Using OR operator | to mach either of to strings)
grep -E 'pattern1|pattern2' filename
grep -e pattern1 -e pattern2 filename
grep -E 'pattern1.*pattern2' filename                (# There is no AND operator in grep. But, you can simulate AND using grep -E option.)
grep -E 'pattern1.*pattern2|pattern2.*pattern1' filename
grep -v 'pattern1' filename                                        (# Using grep -v you can simulate the NOT conditions. -v option is for invert match)
grep -e '\<V-' -e "Open" Scan-CAT-1.log | cut -b-8
grep -e rmdir -e unlink -e 'unlinkat' -e rename -e renameat /etc/audit/audit.rules # using AND operation with -e 
grep '^PASS_MIN_LEN' /etc/login.defs                (# will match exact string nothing in the begning, just to avoid commented lines with similar string)
grep "^log_file" /etc/audit/auditd.conf|sed 's/^[^/]*//; s/[^/]*$//'| xargs stat -c %a:%n | cut -c1-3 # Cut first 3 characters from output
grep 'v1\|v2c\|com2sec' /etc/snmp/snmpd.conf | grep -v '^#'                (# match and find multiple strings in a file and exclude commented lines)
grep -oP '^[^#]*NOPASSWD' /etc/sudoers                # exclude # at front of string and search for NOPASSWD
grep -o '\<pam_faillock.so preauth silent' /etc/pam.d/system-auth        # only capture string starting from pam_faillock.so upto silent
grep 'auth'  /etc/pam.d/system-auth | grep -oP 'requisite\K.*(?=quiet)'                # print string between 'requisite' and 'quiet'
grep 'auth'  /etc/pam.d/system-auth | grep -oP 'requisite\K.*(?=)'                        # print string between 'requisite' upto end
grep 'auth'  /etc/pam.d/system-auth | awk -v FS="(requisite|quiet)" '{print $2}' # print string between 'requisite' and 'quiet'
grep -o  '\ V-.....\ ' Scan-CAT-1.log                                # match a format of V-12345
grep '\ V-' Scan-CAT-1.log | cut -b-8 | wc -l                # match V- and take first 8
grep '\<V-' Scan-CAT-1.log | cut -b-8 | wc -l                # match empty string before V- and take first 8, list number of occurance
grep '\<V-' Scan-CAT-1.log -c | cut -b-8                                # match V- and take first 8, and number of occurance
grep "Options" /etc/httpd/conf/http.conf -n          # print line number also
stat -c "%a %n" /var/log/messages                                        # get permission numerically in Octel, like 0600, 755 etc

service --status-all | grep -i httpd
service --status-all | grep -i httpd | grep 'is running...'
service --status-all | grep -i ssh | grep 'is running...'
grep -io "Chrome" /root/test.txt
grep -io "Chrome" /root/test.txt | wc -l
grep -o --color '\-p wa'                                        # to extract word and color it
grep -o --color '\-p wa' | wc -l                        # to extract exact word, color it and show number of time its appearance

# ---------- Find and replace a string in a file--------------- (http://unix.stackexchange.com/questions/112023/how-can-i-replace-a-string-in-a-files)
grep -rl string1 /somedir/fileName | xargs sed -i 's/string1/string2/g'
grep -rl 'Options' /usr/tideway/stig.log | xargs sed -i 's/Options/NoOptions/g' (# find string Options in a file stig.log, replace it with NoOptions)
zgrep
shopt -s nocasematch                        (# turn on the case matching)
shopt -u nocasematch                        (# turn off the case matching)

# The egrep tool supports extended regular expressions eregex, The egrep utility will handle any modern regular expressions.\ 
# It can also search for several keywords if they are entered at the command line, separated by the vertical bar character. 
egrep 'Manager|Developer' employee.txt | grep -v Sales (# You can also combine NOT with other operator to get some powerful combinations)
egrep -n "*" <file_name> | egrep "line_number"
egrep 'pattern1|pattern2' filename
egrep 'linux|^image'   /etc/lilo.conf
egrep  '\b(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)' input                # Valid IP address
egrep --color=always 'Options' /etc/httpd/conf/httpd.conf |  GREP_COLOR='01;35' egrep --color=always 'Includes'  # multicolor output

# fgrep stands for fast grep and fgrep interprets strings literally (no regex or eregex support). The fgrep utility does not recognise the special meaning of the regular expressions
fgrep 'cat*' FILE
fgrep –f LIST FILE


${ FIND }
find <directory> <files_Name>
find / | grep "somestring"
find / -name somestring
find /usr/tideway/stig.log -type f -exec sed -i 's/NoOptions/NewOptions/g' {} \;
find . -type f -exec sed -i 's/foo/bar/g' {} +        (# replace string in regular files (including hidden ones) in this and all subdirectories)
find / -name <search-file-name>
find / -executable -name *

${CUT, HEAD, TAIL on string}
someString='ABC123 XYZ:987 abc111 xyz222'
echo $someString | cut -c1-3                        # output the string and take character from 1 to 3, output: ABC
echo $someString | cut -c8-13                # output the string and take character from 8 to 13, output: XYZ987
echo $someString | cut -d':' -f2                # it will cut the string from colon and show rest of the string
echo $someString | cut -d "=" -f2        # cut string after equal sign
echo $someString | head -c3                        # output the string and take character upto 3, output: ABC
echo $someString | tail -c5                        # output a string from tail take character upto 5, output: z222
head -n <no. of lines>                                (# view file with defined number of lines from top of file)
tail -n <no. of lines>                                (# view file with defined number of line from bottom of a file)
tail -n +3
tail -n -1                                                        (# capture last line)                                                
head -n 20 file_name | tail -n 10        (# get first 20 lines and then take its 10 bottom) 

${AWK}
# $1 is field #1, $2 is field #2, etc.
echo one two | awk '{print $1}'                                        # one
echo one two | awk '{print $2}'                                        # two
echo one two | awk '{print $0}'                                        # one two, All the fields!
echo one two three | awk '{print $NF}'                        # Will print last column, i.e., three
awk '{print $3}' $filename                                                # Prints field #3 of file $filename to stdout.
awk '{print $1 $5 $6}' $filename                                # Prints fields #1, #5, and #6 of file $filename.
awk '{print $0}' $filename                                                # Prints the entire file!
awk '{print substr($0,1,3);exit}'                                # Using substring, match first 3 characters
awk '{print $1 $1 "1"}'                                                        # Print output from column 1 and ends with :
awk 'FNR>=20 && FNR<=40' file_name                                # open a file and only show lines between 20 to 40
awk 'NR==2'                                                                                # only show line no.2 out of whatever number of lines
awk '{print $NF}'                                                                # prints last column of a line
awk '{print $(NF-1), $NF}'                                                # prints last two columns of a line
awk -F'package:' '{print $2}'                                        # find package: and after print 2nd column result
awk -F':' '{ print $1}' /etc/passwd                         # To print all the user accounts of Linux
awk -F: '{ print $1}' /etc/passwd                                # To print all the user accounts of Linux
awk -F':' ' '/tideway/' { print $1}' /etc/passwd # Check the tideway who is in tideway group
gawk -F: '/tideway/{ print $1 }' /etc/passwd        # Check the tideway who is in tideway group
awk -F: '{ print $1}' /etc/passwd | awk '/tideway/' # Check account in Linux


${SED - The Stream Editor}
# sed performs automatic, non-interactive editing of files. It is often used in scripts to search and replace patterns in text. It supports most regular expressions. 
sed -n '/xzy/p' $filename                                # The -n option tells sed to print only those lines matching the pattern. Otherwise all input lines would print.
sed -e '/^$/d' $filename                                # The -e option causes the next string to be interpreted as an editing instruction.
sed 's/^package://'                                                # cut the string from package: and show rest of the string
sed '5!d' file                                                        # only show line no.5 out of whatever number of lines
sed -n 2p                                                                # only show line no.5 out of whatever number of lines
sed -n 5,10p file                                                # range of line from 5 to 10
sed -n '20,40p' file_name                                                (# show a file between line number 20 to 40)
sed -i -- 's/OldString/NewString/g' stig.log        (# it will find a file name stig.log and in it find OldString, replace with NewString)
sed -i '4s/OldString/NewString/g' stig.log                (# Replace foo with bar only on the 4th line)
sed -i -- 's/OldString/NewString/g' *.log                (# replace string in all files ending *.log)
sed -i -- 's/oldString/newString/g' *                         (# replace string all files in this directory only)
sed -i 's/foo\(.*baz\)/bar\1/' file                                (# Replace foo with bar only if there is a baz later on the same line)
sed -i 's/NewString/OldString/g; s/LowOptions/Options/g'  file.log        (# replacing multiple lines with different strings)
sed -Ei 's/Options|OldString/foobar/g'  stig.log        (# replace multiple strings with foobar)
(# If you have a large number of patterns, it is easier to save your patterns and their replacements in a sed script file:)
#! /usr/bin/sed -f
s/foo/bar/g
s/baz/zab/g
(# Or, if you have too many pattern pairs for the above to be feasible, you can read pattern pairs from a file (two space separated patterns, $pattern and $replacement, per line):
`
while read -r pattern replacement; do   
    sed -i "s/$pattern/$replacement/" file
done < patterns.txt
`
(# That will be quite slow for long lists of patterns and large data files so you might want to read the patterns and create a sed script from them instead. The following assumes a <space> delimiter separates a list of MATCH<space>REPLACE pairs occurring one-per-line in the file patterns.txt :)
sed 's| *\([^ ]*\) *\([^ ]*\).*|s/\1/\2/g|' <patterns.txt | sed -f- ./editfile >outfile

${PERL}
perl -i -pe 's/foo/bar/g; s/baz/zab/g; s/Alice/Joan/g' file
perl -i -pe 's/foo|bar|baz/foobar/g' file                (# replace multiple strings with foobar)

${Pattern Matching}
Here is a table of regular expression operators and their effect :
Operator        Effect
.                Matches any single character.
?                The preceding item is optional and will be matched, at most, once.
*                The preceding item will be matched zero or more times.
+                The preceding item will be matched one or more times.
{N}                The preceding item is matched exactly N times.
{N,}        The preceding item is matched N or more times.
{N,M}        The preceding item is matched at least N times, but not more than M times.
-                represents the range if its not first or last in a list or the ending point of a range in a list.
^                Matches the empty string at the beginning of a line; also represents the characters not in the range of a list.
$                Matches the empty string at the end of a line.
\b                Matches the empty string at the edge of a word.
\B                Matches the empty string provided its not at the edge of a word.
\<                Match the empty string at the beginning of word.
\>                Match the empty string at the end of word.

--- Table C-1. Basic SED operators ---
Operator                                                                Name                Effect
[address-range]/p                                                print                Print [specified address range]
[address-range]/d                                                delete                Delete [specified address range]
s/pattern1/pattern2/                                        substitute        Substitute pattern2 for first instance of pattern1 in a line
[address-range]/s/pattern1/pattern2/        substitute        Substitute pattern2 for first instance of pattern1 in a line, over address-range
[address-range]/y/pattern1/pattern2/        transform        replace any character in pattern1 with the corresponding character in pattern2, over address-range (equivalent of tr)
[address] i pattern Filename                        insert                Insert pattern at address indicated in file Filename. Usually used with -i in-place option.
g                                                                                global                Operate on every pattern match within each matched line of input

--- Table C-2. Examples of SED operators ---
Notation                                Effect
8d                                                Delete 8th line of input.
/^$/d                                        Delete all blank lines.
1,/^$/d                                        Delete from beginning of input up to, and including first blank line.
/Jones/p                                Print only lines containing "Jones" (with -n option).
s/Windows/Linux/                Substitute "Linux" for first instance of "Windows" found in each input line.
s/BSOD/stability/g                Substitute "stability" for every instance of "BSOD" found in each input line.
s/ *$//                                        Delete all spaces at the end of every line.
s/00*/0/g                                Compress all consecutive sequences of zeroes into a single zero.
echo "Working on it." | sed -e '1i How far are you along?'        Prints "How far are you along?" as first line, "Working on it" as second.
5i 'Linux is great.' file.txt        Inserts 'Linux is great.' at line 5 of the file file.txt.
/GUI/d                                        Delete all lines containing "GUI".
s/GUI//g                                Delete all instances of "GUI", leaving the remainder of each line intact.

${Exit Code}
$?
2>&1
@?

${Installation and Package management}
rpm -ga                                                                                 # get all installed packages)
rpm -qa --last                                                                        # get all the installed packages on RHLE)
rpm -q --changelog {package-name}
rpm -q --changelog {package-name} | more
rpm -q --changelog {package-name} | grep CVE-NUMBER
rpm -q --changelog perl|grep CVE-2008-1927
rpm -q --changelog * | grep CVE*
rpm -ivh {package-name}                                                        # install a package)
rpm -Uvh {package-name}                                                 # to upgrade a given package)
rpm -evv {package-name}                                                        # remove/erase RPM package)
rpm -qf /usr/bin/htpasswd                                                # Find this file belongs to which package)
rpm -qi {package-name}                                                        # query an information of installed RPM package)
rpm -qip {package-name}                                                        # query information of package before installing)
rpm -qdf [package-name]                                                        # list available package documentation)
rpm -Vp {package-name}                                                        # to verify rpm package)
rpm -Va                                                                                        # to verify all RPM packages)
rpm -q gpg-pubkey                                                                # to ensure gpg keys are installed)
rpm -qpR {.rpm}                                                                        # find what dependencies rpm package has)
rpm -qR {package}                                                                # find what dependencies rpm package has)
rpm --checksig {package}                                                # This command checks the PGP signature of specified package to ensure its integrity and origin)
rpm -Uvh https://yum.opennms.org/repofiles/opennms-repo-RELEASE-DISTRIBUTION.noarch.rpm
How To rebuild Corrupted RPM Database

${NMAP - Network Mapper}
nmap <scan multiple IP addresses separated by space or host names>
nmap localhost                                                                                 # Test command 
nmap -d                                                                                         # Debug commands

`Command-line options`        One of the coolest, yet least understood Nmap options is --packet-trace.
`Filenames        Follow the` -iL option with the input filename such as C:\net\dhcp-leases.txt or /home/h4x/hosts-to-pwn.lst.
`Application commands`        Trinity scanned the Matrix with the command nmap -v -sS -O 10.2.2.2.
`Replaceable variables`        Let <source> be the machine running Nmap and <target> be microsoft.com.

`Network and ports`
nmap -p 80 192.168.1.1                                   # Scan port 80
nmap -p T:80 192.168.1.1                                 # Scan TCP port 80
nmap -p U:53 192.168.1.1                                 # Scan UDP port 53
nmap -sU -p <port> <IP address / host>                                  # Scan UDP port
nmap -sT -p <port> <IP address / host>
nmap -sP -PI 192.168.1.0/20                                                        # ICMP Network Scanning, (-sP: only host discovery, -PI: ICMP echo request) 
nmap 192.168.1.1-20                                                                        # discover range from 1 to 20
nmap 192.168.1.*                                                                        # discover IPs from 1 to 255
nmap 192.168.1.0/24                                                                        # discover all subnets and ranges under it
nmap 192.168.1.*                                                                        # Scan all 256 IP addresses)
nmap 192.168.1.0/24                                                                          # Scan IP addresses in subnet 24 range)
nmap -A <IP address> or -v -A <IP>                                         # In-depth details of host by turning on OS and version detection scanning)
nmap -sA <IP address>                                                                 # Find out if a host/network is protected by a firewall)
nmap -PN <IP address>                                                                  # Scan a host when protected by the firewall, show all available ports)
nmap --reason <IP>                                                                         # Display the reason a port is in a particular state)
nmap --open <IP>                                                                         # Only show open (or possibly open) ports
nmap --packet-trace <IP>                                                         # Show all packets sent and received
nmap --iflist <IP>                                                                         # Show host interfaces and routes
nmap -v -O --osscan-guess <IP>                                                 # How do I detect remote operating system?
nmap -sV <IP>                                                                                 # How to detect remote services version numbers
nmap -PA <IP>        or -PS or -PO or -PU                                 # firewall is blocks standard ICMP pings, host using TCP ACK (PA) & TCP Syn (PS) ping)
nmap -sU <IP>                                                                                 # Scan a host for UDP services (UDP scan)
nmap -sU -p <port> <IP or hostname>                                         # Scan a host for UDP services (UDP scan)
nmap -sO <IP>                                                                                 # Determine which IP protocols (TCP, ICMP, IGMP, etc.) are supported by target
nmap -sN <IP> or -sF or -sX                                                         # Scan a firewall for a security weakness
nmap -sn -PS <target>                                                                # Discovering hosts with TCP SYN ping scans
nmap -sn -PA <target>                                                                # Discovering hosts with TCP ACK ping scans
nmap -sn -PU <target>                                                                # Discovering hosts with UDP ping scans
nmap -sn -PE <target>                                                                # Discovering hosts with ICMP ping scans
nmap -sn -PY <target>                                                                # Discovering hosts with SCTP INIT ping scans
nmap -sn -PO <target>                                                                # Discovering hosts with IP protocol ping scans
nmap -sn -PR <target>                                                                # Discovering hosts with ARP ping scans
nmap -sn --send-ip -PS21,22,23,25,80,445,443,3389,8080 -PA80,443,8080 -PO1,2,4,6 -PU631,161,137,123 <target> # Performing advanced ping scans
nmap --script broadcast-ping --packet-trace                        # Discovering hosts with broadcast ping scans
nmap -6 <target>                                                                        # Scanning IPv6 addresses
nmap --script broadcast -e <interface>                                # Gathering network information with broadcast scripts
nmap -sV -Pn -n --proxies <comma separated list of proxies> <target>        # Scanning through proxies
nmap -p80 --script ipidseq <your ip>/24                                # Spoofing the origin IP of a scan
nmap -p80 --script ipidseq -iR 1000                                        # Spoofing the origin IP of a scan
nmap --script dns-brute <target>                                        # Discovering hostnames by brute forcing DNS records
nmap -T4 -n -Pn -p- <target>                                                # scan all possible open ports on host 
nmap -p- <target>                                                                        # scan all possible open ports on host
nmap -T4 -d <target>                                                                # timing template can be 1 to 5
nmap -T4 --scan-delay 1s --initial-rtt-timeout 150ms --host-timeout 15m -d scanme.nmap.org        # adjust time
nmap --min-hostgroup 100 --max-hostgroup 500 --max-retries 2 <target>        # adjust performance
nmap -sI zombie_host target_host                                        # hide original source of command 

nmap -sP -PI 192.168.1.0/20                                                        # ICMP and host discovery 
nmap -p 22,80,443 <IP address>                                                 # Linux OS
nmap -p 4,80,135,139,443,445,7001 <IP Address>                 # Windows OS"
nmap -p 22,135,139,445 <IP-address>                                 # WIndows/Linux OS"
nmap -p 902 <IP address>                                                         # vCenter"
nmap -p 389,636 <IP address>                                                 # LDAP or DC"
nmap -p 123 <IP address>                                                         # NTP server"
nmap -p 25 <IP address>                                                         # SMTP server"
nmap -p 25032 <IP Address>                                                         # Consolidation server"
nmap -p 1433 <IP address>                                                         # MSSQL'
nmap -p 1521 <IP address>                                                         # Oracle SQL"
nmap -p 3306 <IP address>                                                         # mySQL"
nmap -p 4100 <IP address>                                                         # sybase SQL"
nmap -p 5988,5989 <IP address>                                                 # WBEM http(s)"
`
*** Legend ***
-p                 Port selection
        -p 22
        -p ssh
        -p 22,135,80
        -p80-1200,8000-8005,900-1000
        -p-100,1000-        You can omit the beginning of a range to imply port one, or the end to imply the last port possible (65535 for TCP and UDP, 
                255 for protocol scan). This example scans ports one through 100, and all ports greater or equal to 60,000.
        -p-   Omit beginning and end numbers to scan the whole range (excluding zero).
        -pT:21,23,110,U:53,111,137,161  Separate lists of TCP and UDP ports can be given by preceding the lists with T: (for TCP) or U:. This 
                example scans three TCP ports (FTP, Telnet, and POP3), and four UDP services (DNS, rpcbind, NetBIOS, and SNMP). Specifying both TCP and UDP ports only matters if you also tell Nmap to do a UDP scan (-sU) and one of the TCP scan methods, such as -sS, -sA, or -sF.
        -p http*                   Wildcards may be used to match ports with similar names. This expression matches eight port numbers, including http (80), 
                http-mgmt (280), https (443), and http-proxy (8080). 
        -p 1-1023,[1024-]                Enclosing a range in brackets causes those port numbers to be scanned only if they are registered in nmap-services. 
                In this example, all the reserved ports (1–1,023), plus all the higher ports registered in nmap-services. 
        
-sn         option tells Nmap to skip the port scan phase but perform host discovery
-PU         Ping UDP, Nmap uses UDP ping scanning
-PE         Patcket Echo, used for ICMP tracing
-PY         SCTP INIT ping scans
-PR         ARP ping scan
-PA     host using TCP ACK (PA)
-PS     TCP Syn (PS) ping
-Pn         ping n times
-PN         dont ping target, specially target blocked off by firewal 
-T4                aggressive timming template
-d                 debug mode
-sA                TCP ACK scan , ACK scan is commonly used to map out firewall rulesets. In particular, it helps understand whether firewall rules are                 
        stateful or not. The downside is that it cannot distinguish open from closed ports.
-sT         TCP connection scan
-sS         TCP SYNC (Stealth) Scan
-sU         UDP scan
-sW                TCP Window scan, Window scan is like ACK scan, except that it is able to detect open versus closed ports against certain machines.
-sF         FIN scan - A FIN scan sends the packet only set with a FIN flag, so it is not required to complete the TCP handshaking.
-sP         PING scan
-sN                NULL scan
-sO                IP Protocol scan, Protocol scan determines which IP protocols (TCP, ICMP, IGMP, etc.) are supported by the target machine. This isnt 
        technically a port scan, since it cycles through IP protocol numbers rather than TCP or UDP port numbers.
-sX                Xmas scan
-sM                TCP Maimon Scan, his obscure firewall-evading scan type is similar to a FIN scan, but includes the ACK flag as well. This allows it to get 
        by more packet filtering firewalls. 
-sV         Version detection
-sI                TCP Idle Scan, Idle scan is the stealthiest scan type of all, and can sometimes exploit trusted IP address relationships. Unfortunately, it 
        is also slow and complex.
-oA         fileName save files as logs
-oN/-oX/-oG/-oS This writes the results to a file that we can use for later analysis
-sI         Idle scan -  In idle scan, Nmap doesn’t send the packets from your real IP address—instead of generating the packets from the attacker 
        machine, Nmap uses another host from the target network to send the packets. Let’s consider an example to understand the concept of idle scan
--log-errors                 include error logs 
--reason                         This tells nmap to provide the reason that a ports state was reported a certain way.
--append-output         Append logs to output file
`

https://nmap.org/nsedoc/index.html                                                                                                # Library of nmap scripts
nmap --script ssl-enum-ciphers -p 443 addmCONcrtLS01                                                          # Check and give the list of all supported ciphers
nmap --script ssl-enum-ciphers -p 443 addmdevls01                                                                # check the communicating TLS protocols
nmap -sU -p161 --script snmp-brute --script-args snmplist=community.lst<target> # community.lst is a file containing the community names
nmap -sU -p161 --script snmp-brute --script-args snmplist=community.lst 192.168.1.0/24

nmap --script +ssl-enum-ciphers -p 3389 <hostName> -Pn

nmap 192.168.1.1 > output.txt                                                                                                                          # Scan IP address and output to a file
nmap <multiple IP/hosts> | grep --color -e 'Host is up' -e 'rDNS' -e '161' -e 'All'         # to namp multiple hosts or IPs at once
nmap -sP <multiple IP/hosts>

` Exclude hosts/networks or a list `
nmap 192.168.1.0/24 --exclude 192.168.1.5
nmap 192.168.1.0/24 --exclude 192.168.1.5,192.168.1.254
nmap -iL /tmp/scanlist.txt --excludefile /tmp/exclude.txt

` Turn on OS and version detection scanning script (IPv4) `
nmap -A 192.168.1.254
nmap -v -A 192.168.1.1
nmap -A -iL /tmp/scanlist.txt 

` Find out if a host/network is protected by a firewall `
nmap -sA 192.168.1.254
nmap -sA server1.cyberciti.biz

` Scan a host when protected by the firewall `
nmap -PN 192.168.1.1
nmap -PN server1.cyberciti.biz

` Scan an IPv6 host/address `
The -6 option enable IPv6 scanning. The syntax is:
nmap -6 IPv6-Address-Here
nmap -6 server1.cyberciti.biz
nmap -6 2607:f0d0:1002:51::4
nmap -v A -6 2607:f0d0:1002:51::4

` Scan a network and find out which servers and devices are up and running `
This is known as host discovery or ping scan:
nmap -sP 192.168.1.0/24

`Input & Output file`
nmap -iL <INPUT FILE>                         #The target list contained in the input file may be separated either by spaces, tabs, or newlines.
nmap -iL CISCO_ACI_TXT
nmap -iL /tmp/test.txt
nmap -iL CISCO_ACI_TXT > CISCO_ACI_RESULTS
nmap -sU -p 161 -iL CISCO_ACI_TXT
nmap -sU -p 161 -iL CISCO_ACI_TXT > CISCO_ACI_RESULTS 
nmap -v -sO -oG - -sU -p 161 -iL CISCO_ACI_TXT | grep "Ports:"                                                # Formats output
nmap -v -oG - -sU -p 161 -iL CISCO_ACI_TXT | grep "Ports:" > CISCO_ACI_RESULTS                # Formats output
nmap -oN <output file> <target>                                                                                                                # TXT file
nmap -oX <filename> <target>                                                                                                                # XML file
scanpbnj -a <Nmap arguments> <target>                                                                                                # SQLite database
nmap -oG <output file> <target>                                                                                                                # Grepable 
nmap -sV --traceroute scanme.nmap.org                                                                                                # Zenmap


`NMAP Output` 
nmap -oA scanme scanme.nmap.org                                                                                        # saving output in all formats, .nmap/.xml/.grep
nmap --append-output -oN existing.log scanme.nmap.org                                        # Append output logs
nmap -A -T4 -oN output.txt --log-errors <target>                                                # include debug information in logs 
nmap --reason <target>                                                                                                         # include reason in output


` XML output `
nmap -oX <filename> <target>                                                                                                                # XML format
nmap -A -O -oX scanme.xml <Target IP/Name/FQDN>                                                                                # XML output
nmap -T4 -A -oX - localhost                                                                                                                        # output as XML with -oX

` Grepo output `
nmap -sn -oG - -iR 100                        # demonstrates a ping scan of five random hosts on internet
nmap -sL -oG - -iR 5                         # demonstrates a list scan of five hosts on internet 
nmap -p22 -Pn -oG - localhost | awk 'open/{print $2 " " $3}'

` NSE scripts `
nmap --script-help=scriptName                                                                # To get help on security scripts
nmap --script-help=*                                                                                # To get a list of installed NSE scripts
nmap -sV -p 443 –script=ssl-heartbleed.nse 192.168.1.1                # Using NSE security scripts, there are currently 471 NSE scripts. 

` Geolocation `
nmap --script=asn-query,whois,ip-geolocation-maxmind 192.168.1.0/24

` SQL output `
scanpbnj -a <Nmap arguments> <target>                                                # Save results in sql 
apt-get install pbnj

` PDF output`
nmap -oX scanme.xml scanme.nmap.org
we could use a tool named fop to achieve this task.

`Vulnerabilities check`
nmap -sV --script vuln localhost

`Geo location`
The ip-geolocation-maxmind script depends on a database that is not included in Nmap by default. Download Maxminds GeoLite City database in binary format from http://dev.maxmind.com/geoip/legacy/geolite/ and place it in your local Nmap data folder (/nselib/data/) inside your installation directory. The ip-geolocation-ipinfodb script requires an API key to query an external service. The service is free, and you only need to register at http://ipinfodb.com/register.php to get one. This service does not limit the number of queries, but connections are only processed from one IP address that you need to register during the signup process.

nmap --traceroute --script traceroute-geolocation <target>                # Obtaining traceroute geolocation information

`HTML & Web`
nmap -p80,443 --script http-methods,http-trace --script-args http-methods.test-all=true google.com                # Listing supported HTTP methods
nmap -p80 --script http-methods,http-trace --script-args http-methods.test-all=true localhost
nmap --script http-open-proxy -p8080 localhost                                # Checking whether a web server is an open proxy
nmap --script http-enum -p80,443 localhost                                        # Discovering interesting files and folders in web servers
nmap -p80 --script http-userdir-enum localhost                                # Abusing mod_userdir to enumerate user accounts
nmap -p80,443 --script http-brute localhost                                        # Brute forcing HTTP authentication
nmap --script http-form-brute -p80,443 localhost
nmap --script http-form-brute -p80,443  localhost                        # Brute forcing web applications
nmap -p80 --script http-waf-detect,http-waf-fingerprint <target>        # Detecting web application firewalls
nmap -p80 --script http-methods,http-trace --script-args http-methods.retest <target># Detecting possible XST vulnerabilities
nmap -p80 --script http-unsafe-output-escaping localhost        # Detecting XSS vulnerabilities
nmap -p80 --script http-sql-injection                                                # Finding SQL injection vulnerabilities
nmap -p80 --script http-slowloris --max-parallelism 400                # Detecting web servers vulnerable to solaris denial of service attacks
nmap -p80 --script http-default-accounts                                        # Finding web applications with default credentials
nmap -sV --script http-shellshock                                                        # Detecting web applications vulnerable to Shellshock
nmap --script http-cross-domain-policy                                                # Detecting insecure cross-domain policies
nmap -p80 --script http-git                                                                        # Detecting exposed source code control systems
nmap --script ssl-enum-ciphers -p 443                                                # Auditing the strength of cipher suites in SSL servers
nmap -p80 --script http-grep --script-args http-grep.builtins=e-mail         # Scrapping e-mail accounts from web servers  
nmap -sn --script whois-* <target>                                                        # Getting information from WHOIS records
nmap -sn -Pn -n --script shodan-api --script-args shodan-api.apikey=<ShodanAPI KEY> <target>#Querying Shodan to obtain target information
# Checking whether a host is flagged by Google Safe Browsing for malicious activities
nmap -p80 --script http-google-malware --script-args http-google-malware.api=<API> <target> 
nmap -sn --script hostmap-* <target>                                                # Discovering hostnames pointing to the same IP address
nmap -p80 --script http-methods --script-args http.pipeline=25 <target> # number of requests for servers
nmap -p80 --script http-methods --script-args http.pipeline=25 <target>        # number of request to crawl


nmap -p 'T:513,3940,5989,902,135,80,22,5988,443,U:161' 10.132.35.20 - worked 
nmap -p 'T:513,3940,5989,902,135,80,22,5988,443,U:161' 10.132.35.20 - worked 
nmap '-p' 'T:513,3940,5989,902,135,80,22,5988,443,U:161' 10.132.35.20 - worked 
 
nmap '-sT' '-sU' '-T4' '-PE' '-PA139,445,22,161' 10.132.35.20

nmap -v 10.132.35.20         This option scans all reserved TCP ports on the machine IP. The -v option enables verbose mode.

nmap -sS -O scanme.nmap.org/24
nmap -sS -O 10.132.35.20/24                 Launches a stealth SYN scan against each machine that is up out of the 256 IPs on the class C sized network where Scanme resides. It also tries to determine what operating system is running on each host that is up and running. This requires root privileges because of the SYN scan and OS detection.

nmap -sV -p 22,53,110,143,4564 198.116.0-255.1-127                Launches host enumeration and a TCP scan at the first half of each of the 255 possible eight-bit subnets in the 198.116 class B address space. This tests whether the systems run SSH, DNS, POP3, or IMAP on their standard ports, or anything on port 4564. For any of these ports found open, version detection is used to determine what application is running.

nmap -v -iR 100000 -Pn -p 80                Asks Nmap to choose 100,000 hosts at random and scan them for web servers (port 80). Host enumeration is disabled with -Pn since first sending a couple probes to determine whether a host is up is wasteful when you are only probing one port on each target host anyway.

nmap -Pn -p80 -oX logs/pb-port80scan.xml -oG logs/pb-port80scan.gnmap 216.163.128.20/20                This scans 4096 IPs for any web servers (without pinging them) and saves the output in grepable and XML formats.


` Obtaining profile information from Googles People API`
Please install it manually before continuing.You can download google-people-enum.nse from https://raw.githubusercontent.com/cldrn/nmap-nse-scripts/master/scripts/google-people-enum.nse.

nmap -sn --script google-people-enum.nse <target>

To accomplish this task, we use the NSE script vulscan. This script is not included in the official Nmap repository, so you need to install it manually before continuing. To install it, download the latest version of vulscan from my GitHub repository:

https://github.com/cldrn/nmap-nse-scripts/blob/master/scripts/vulscan.nse

Copy the script vulscan.nse in your local script folder ($NMAP_INSTALLATION/scripts/). Then, create the files cve.csv, scipvuldb.csv, and exploitdb.csv inside your data directory ($NMAP_INSTALLATION/nselib/data).

nmap -p80 -sV --script vulscan --script-args vulscan.updatedb <target> # Matching services with public vulnerability advisories



`eMail`
nmap -p <Port> --script http-grep <target>                                        # Collecting valid e-mail accounts and IP addresses from web servers
nmap -p443 --script http-grep nmap.org 
nmap -sV --script smtp-open-relay -v <target>                                # Detecting SMTP open relays
nmap -p25 --script smtp-brute <target>                                                # Brute forcing SMTP passwords
nmap -sV --script smtp-strangeport <target>                                        # Detecting suspicious SMTP servers
nmap -p25 --script smtp-enum-users <target>                                        # Enumerating SMTP usernames
nmap -p143 --script imap-brute <target>                                                # Brute forcing IMAP passwords
nmap -p143,993 --script imap-capabilities                                         # Retrieving the capabilities of an IMAP server
nmap -p110 --script pop3-brute <target>                                                # Brute forcing POP3 passwords
nmap -p110 --script pop3-capabilities <target>                                # Retrieving the capabilities of a POP3 server
# Retrieving information from SMTP servers with NTLM authentication
nmap -p25,465,587 --script smtp-ntlm-info --script-args smtp-ntlm-info.domain=<target domain> <target>

`Database`
nmap -p3306 --script mysql-databases --script-args mysqluser=   <user>,mysqlpass=<password> <target> # Listing MySQL databases
nmap -p3306 --script mysql-users --script-args mysqluser=<username>,mysqlpass=<password> <target>        # Listing MySQL users
nmap -p3306 --script mysql-variables --script-args mysqluser=<root>,mysqlpass=<pass> <target>                # Listing MySQL variables
nmap -p3306 --script mysql-brute <target>                                # Brute forcing MySQL passwords
nmap -p3306 --script mysql-empty-password <target>                # Finding root accounts with an empty password in MySQL servers
nmap -p3306 --script mysql-audit --script-args 'mysql-audit.username="<username>",mysql-audit.password="<password>",mysql-audit.filename=/usr/local/share/nmap/nselib/data/mysql-cis.audit' <target>                                                                                        # Detecting insecure configurations in MySQL servers
nmap -sV --script oracle-brute --script-args oracle-brute.sid=TEST <target>        # Brute forcing Oracle passwords
nmap -sV --script oracle-sid-brute <target>                        # Brute forcing Oracle SID names
nmap -p1433 --script ms-sql-info <target>                        # Retrieving information from MS SQL servers
nmap -p1433 --script ms-sql-brute <target>                        # Brute forcing MS SQL passwords
nmap -p1433 --script ms-sql-empty-password,ms-sql-dump-hashes <target>                # Dumping password hashes of MS SQL servers

# Running commands through xp_cmdshell in MS SQL servers, MS SQL servers have a stored procedure named xp_cmdshell. This feature allows programmers to execute commands through MS SQL servers. 
nmap --script-args 'mssql.username="<user>",mssql.password="<password>"' --script ms-sql-xp-cmdshell -p1433 <target> 
nmap -p1433 --script ms-sql-empty-password -v <target>                # Finding system administrator accounts with empty passwords in MS SQL servers
nmap -p1433 --script ms-sql-ntlm-info <target>                                # Obtaining information from MS SQL servers with NTLM enabled
nmap -p27017 --script mongodb-info <target>                                        # Retrieving MongoDB server information
nmap -p27017 --script mongodb-databases <target>                        # Detecting MongoDB instances with no authentication enabled
nmap -p27017 --script mongodb-databases <target>                        # Listing MongoDB databases
nmap -p5984 --script couchdb-databases <target>                                # Listing CouchDB databases
nmap -p5984 --script couchdb-stats <target>                                        # Retrieving CouchDB database statistics
nmap -p9160 --script cassandra-brute <target>                                # Detecting Cassandra databases with no authentication enabled
nmap -p6379 --script redis-brute <target>                                        # Brute forcing Redis passwords

`Windows`
nmap -p139,445 --script smb-os-discovery <target>                        # Obtaining system information from SMB
nmap -p137,139,445 --script smb-security-mode <target>                # Detecting Windows clients with SMB signing disabled
nmap -p80 --script iis-short-name-brute <target>                        # Detecting IIS web servers that disclose Windows 8.3 names
nmap -p445 --script smb-vuln-ms08-067 <target>                                # Detecting Windows hosts vulnerable to MS08-067
nmap -sU -p137 --script nbstat <target>                                                # Retrieving the NetBIOS name and MAC address of a host
nmap -p139,445 --script smb-enum-users <target>                                # Enumerating user accounts of Windows hosts
nmap -p139,445 --script smb-enum-shares --script-args smbusername=Administrator,smbpassword=Password <target>        # Enumerating shared folders
nmap -p445 --script smb-enum-sessions <target>                                # Enumerating SMB sessions
nmap -p389 -sV <target>                                                                                # Find domain controllers
nmap -p445 --script smb-vuln-double-pulsar-backdoor <target> # Detecting Shadow Brokers' DOUBLEPULSAR SMB implants

`Distributed nmap - DNMAP`
Download the latest version of Dnmap from the official SourceForge repositories at https://sourceforge.net/projects/dnmap/files/.
Dnmap depends on Pythons twisted library. If you are on a Debian-based system, you can install it with the following command:

apt-get install libssl-dev python-twisted

It is also worth mentioning that Nmap is not self-contained in Dnmap; we must install it separately on each client. Please refer to the Compiling Nmap from source code 

`Brute Modes`
# user: In this mode, for each user listed in userdb, every password in passdb will be tried,
nmap --script <brute force script> --script-args brute.mode=user <target>

# pass: In this mode, for each password listed in passdb, every user in userdb will be tried, as follows:
nmap --script <brute force script> --script-args brute.mode=pass <target>

# creds: This mode requires the additional argument brute.credfile, as follows:
nmap--script <brute force script> --script-args  brute.mode=creds,brute.credfile=./creds.txt <target>

`Anonymous Port Scanning: Nmap + Tor + ProxyChains` 
Posted on Tuesday December 27th, 2016by admin  
In this article i will explain how to stay anonymous during port scanning with Nmap (utility for network discovery and security auditing). 
I’ll show how to perform an anonymous port scanning through the Tor network, using ProxyChains utility. 
I’ll also show how to get round a situation where scan fails, because Tor endpoints are blocked. 
Install Tor + Nmap + ProxyChains 
 
From <https://www.shellhacks.com/anonymous-port-scanning-nmap-tor-proxychains/>  

`NMAP Cheat sheet`

# Basic Scanning Techniques
nmap [target]                                                Scan a single target —> 
nmap [target1,target2,etc]                        Scan multiple targets —> 
—-> nmap -iL [list.txt]                                Scan a list of targets 
—-> nmap [range of IP addresses]        Scan a range of hosts 
nmap [IP address/cdir]                                Scan an entire subnet —-> 
—-> nmap -iR [number]                                Scan random hosts 
Excluding targets from a scan —> nmap [targets] –exclude [targets]
Excluding targets using a list —> nmap [targets] –excludefile [list.txt]
Perform an aggressive scan —> nmap -A [target]
Scan an IPv6 target —> nmap -6 [target]

# Discovery Options
Perform a ping scan only —> nmap -sP [target]
Don’t ping —> nmap -PN [target]
TCP SYN Ping —> nmap -PS [target]
TCP ACK ping —-> nmap -PA [target]
UDP ping —-> nmap -PU [target]
SCTP Init Ping —> nmap -PY [target]
ICMP echo ping —-> nmap -PE [target]
ICMP Timestamp ping —> nmap -PP [target]
ICMP address mask ping —> nmap -PM [target]
IP protocol ping —-> nmap -PO [target]
ARP ping —> nmap -PR [target]
Traceroute —> nmap –traceroute [target]
Force reverse DNS resolution —> nmap -R [target]
Disable reverse DNS resolution —> nmap -n [target]
Alternative DNS lookup —> nmap –system-dns [target]
Manually specify DNS servers —> nmap –dns-servers [servers] [target]
Create a host list —-> nmap -sL [targets]

# Advanced Scanning Options

TCP SYN Scan —> nmap -sS [target]
TCP connect scan —-> nmap -sT [target]
UDP scan —-> nmap -sU [target]
TCP Null scan —-> nmap -sN [target]
TCP Fin scan —> nmap -sF [target]
Xmas scan —-> nmap -sX [target]
TCP ACK scan —> nmap -sA [target]
Custom TCP scan —-> nmap –scanflags [flags] [target]
IP protocol scan —-> nmap -sO [target]
Send Raw Ethernet packets —-> nmap –send-eth [target]
Send IP packets —-> nmap –send-ip [target]

# Port Scanning Options
Perform a fast scan —> nmap -F [target]
Scan specific ports —-> nmap -p [ports] [target]
Scan ports by name —-> nmap -p [port name] [target]
Scan ports by protocol —-> nmap -sU -sT -p U:[ports],T:[ports] [target]
Scan all ports —-> nmap -p “*” [target]
Scan top ports —–> nmap –top-ports [number] [target]
Perform a sequential port scan —-> nmap -r [target]

# Version Detection
Operating system detection —-> nmap -O [target]
Submit TCP/IP Fingerprints —-> http://www.nmap.org/submit/
Attempt to guess an unknown —-> nmap -O –osscan-guess [target]
Service version detection —-> nmap -sV [target]
Troubleshooting version scans —-> nmap -sV –version-trace [target]
Perform a RPC scan —-> nmap -sR [target]

# Timing Options
Timing Templates —-> nmap -T [0-5] [target]
Set the packet TTL —-> nmap –ttl [time] [target]
Minimum of parallel connections —-> nmap –min-parallelism [number] [target]
Maximum of parallel connection —-> nmap –max-parallelism [number] [target]
Minimum host group size —–> nmap –min-hostgroup [number] [targets]
Maximum host group size —-> nmap –max-hostgroup [number] [targets]
Maximum RTT timeout —–> nmap –initial-rtt-timeout [time] [target]
Initial RTT timeout —-> nmap –max-rtt-timeout [TTL] [target]
Maximum retries —-> nmap –max-retries [number] [target]
Host timeout —-> nmap –host-timeout [time] [target]
Minimum Scan delay —-> nmap –scan-delay [time] [target]
Maximum scan delay —-> nmap –max-scan-delay [time] [target]
Minimum packet rate —-> nmap –min-rate [number] [target]
Maximum packet rate —-> nmap –max-rate [number] [target]
Defeat reset rate limits —-> nmap –defeat-rst-ratelimit [target]

# Firewall Evasion Techniques
Fragment packets —-> nmap -f [target]
Specify a specific MTU —-> nmap –mtu [MTU] [target]
Use a decoy —-> nmap -D RND: [number] [target]
Idle zombie scan —> nmap -sI [zombie] [target]
Manually specify a source port —-> nmap –source-port [port] [target]
Append random data —-> nmap –data-length [size] [target]
Randomize target scan order —-> nmap –randomize-hosts [target]
Spoof MAC Address —-> nmap –spoof-mac [MAC|0|vendor] [target]
Send bad checksums —-> nmap –badsum [target]

# Output Options
Save output to a text file —-> nmap -oN [scan.txt] [target]
Save output to a xml file —> nmap -oX [scan.xml] [target]
Grepable output —-> nmap -oG [scan.txt] [target]
Output all supported file types —-> nmap -oA [path/filename] [target]
Periodically display statistics —-> nmap –stats-every [time] [target]
133t output —-> nmap -oS [scan.txt] [target]

# Troubleshooting and debugging
Help —> nmap -h
Display Nmap version —-> nmap -V
Verbose output —-> nmap -v [target]
Debugging —-> nmap -d [target]
Display port state reason —-> nmap –reason [target]
Only display open ports —-> nmap –open [target]
Trace packets —> nmap –packet-trace [target]
Display host networking —> nmap –iflist
Specify a network interface —> nmap -e [interface] [target]

# Nmap Scripting Engine
Execute individual scripts —> nmap –script [script.nse] [target]
Execute multiple scripts —-> nmap –script [expression] [target]
Script categories —-> all, auth, default, discovery, external, intrusive, malware, safe, vuln
Execute scripts by category —-> nmap –script [category] [target]
Execute multiple scripts categories —-> nmap –script [category1,category2, etc]
Troubleshoot scripts —-> nmap –script [script] –script-trace [target]
Update the script database —-> nmap –script-updatedb

# Ndiff
Comparison using Ndiff —-> ndiff [scan1.xml] [scan2.xml]
Ndiff verbose mode —-> ndiff -v [scan1.xml] [scan2.xml]
XML output mode —-> ndiff –xml [scan1.xm] [scan2.xml]

`How do I perform a fast scan?`
nmap -F 192.168.1.1

#11: Display the reason a port is in a particular state

nmap --reason 192.168.1.1
nmap --reason server1.cyberciti.biz

#12: Only show open (or possibly open) ports

nmap --open 192.168.1.1
nmap --open server1.cyberciti.biz

#13: Show all packets sent and received

nmap --packet-trace 192.168.1.1
nmap --packet-trace server1.cyberciti.biz

# 14: Show host interfaces and routes

This is useful for debugging (ip command or route command or netstat command like output using nmap)

nmap --iflist

#16: The fastest way to scan all your devices/computers for open ports ever

nmap -T5 192.168.1.0/24

#17: How do I detect remote operating system?

You can identify a remote host apps and OS using the -O option:

nmap -O 192.168.1.1
nmap -O  --osscan-guess 192.168.1.1
nmap -v -O --osscan-guess 192.168.1.1

#18: How do I detect remote services (server / daemon) version numbers?

nmap -sV 192.168.1.1

#19: Scan a host using TCP ACK (PA) and TCP Syn (PS) ping

If firewall is blocking standard ICMP pings, try the following host discovery methods:

nmap -PS 192.168.1.1
nmap -PS 80,21,443 192.168.1.1
nmap -PA 192.168.1.1
nmap -PA 80,21,200-512 192.168.1.1

#20: Scan a host using IP protocol ping

nmap -PO 192.168.1.1

#21: Scan a host using UDP ping

This scan bypasses firewalls and filters that only screen TCP:

nmap -PU 192.168.1.1
nmap -PU 2000.2001 192.168.1.1

#23: Scan a host for UDP services (UDP scan)

Most popular services on the Internet run over the TCP protocol. DNS, SNMP, and DHCP are three of the most common UDP services. Use the following syntax to find out UDP services:

nmap -sU nas03
nmap -sU 192.168.1.1

#24: Scan for IP protocol

This type of scan allows you to determine which IP protocols (TCP, ICMP, IGMP, etc.) are supported by target machines:

nmap -sO 192.168.1.1

#25: Scan a firewall for security weakness

The following scan types exploit a subtle loophole in the TCP and good for testing security of common attacks:

## TCP Null Scan to fool a firewall to generate a response ##
## Does not set any bits (TCP flag header is 0) ##
nmap -sN 192.168.1.254
 
#TCP Fin scan to check firewall ## #Sets just the TCP FIN bit ##
nmap -sF 192.168.1.254
 
## TCP Xmas scan to check firewall ##
## Sets the FIN, PSH, and URG flags, lighting the packet up like a Christmas tree ##
nmap -sX 192.168.1.254

#28: Scan a firewall for MAC address spoofing

### Spoof your MAC address ##
nmap --spoof-mac MAC-ADDRESS-HERE 192.168.1.1
 
### Add other options ###
nmap -v -sT -PN --spoof-mac MAC-ADDRESS-HERE 192.168.1.1
 
 
### Use a random MAC address ###
### The number 0, means nmap chooses a completely random MAC address ###
nmap -v -sT -PN --spoof-mac 0 192.168.1.1

#30 Scans for web servers and pipes into Nikto for scanning

nmap -p80 192.168.1.2/24 -oG - | /path/to/nikto.pl -h -
nmap -p80,443 192.168.1.2/24 -oG - | /path/to/nikto.pl -h -

#31 Speed up nmap

Pass the -T option:
nmap -v -sS -A -T4 192.168.2.5

${NETWORKING}
ip a                                                 # Check the Ethernet setting 
ifcfg-eth0
/etc/resolv.conf                        # name resolution
/etc/hosts 

Netadmin
su - netadmin
sudo lshw -class network
sudo ethtool
ip route show
ip addr flush eth0


${SNMP}
https://blog.udemy.com/snmp-walk/
# SNMP is typically used as the source for a Network Management System as the NMS can mine the wealth of vendor specific SNMP status and configuration information regarding each device to provide a holistic view of the network.
`SNMP Commands
    GET – is the command to retrieve an OID from the MIB
    GET-Next – is the command to walk through the MIB tree going from one OID to the next, this is the command SNMP-walk is based on.
    SET – write a value in a parameter
    TRAP – send an error message or alert due to a configurable threshold being passed or a trigger activated
`
snmpWalk                                                                                                # The snmpwalk command performs a sequence of chained GETNEXT requests automatically.
snmpWalk <IP address> -v1 -C'password'
snmpWalk <IP address> -v1 -C'password' > snmpwalk.out 
snmpwalk -Os -c public -v 1 sys1 system                                                        # retrieves all the variables under the system sys1
snmpWalk <ip addr>  -Os -v1 -C'password' system
snmpwalk -v3 -u joe -l authNoPriv -A joe12 localhost system                # an SNMPv3 request to retrieve all the variables under the system localhost

snmpwalk -v 2c -c public localhost iso.3.6.1.2.1.1.6.0                        # get specific OID
snmpwalk -v 2c -c public -M /root/ismail/ciscoMIB localhost iso.3.6.1.2.1.1.6.0                # specify MIB library path for external MIBs
snmpwalk -mALL -v1 -c'password' <IP address> system

snmpwalk -v 2c -c public localhost
`            -v 2c version information 2 community
        -cthe public or private secret
        IP ADDRESS
`

`snmpbulkwalk`
snmpbulkwalk         # snmpbulkwalk command uses GETBULK SNMP protocol feature to query for an entire tree of information about a network entity.
snmpbulkwalk -mALL -v2c -cprivate snmp_agent_Ip_address entPhysicalTable>time7

`snmptable`
snmptable -mALL -v2c -cprivate snmp_agent_Ip_address sysORTable

`snmpget`
snmpget -mALL -v2c -cprivate snmp_agent_Ip_address ilomCtrlHttpEnabled.0

`snmpset`
snmpset -mALL -v2c -cpublic snmp_agent_Ip_address ilomCtrlHttpEnabled.0 i 1

`snmptrapd`
snmptrapd -mALL -Lo -f -t -OvQ -e -F "%H.%J.%K:%W:%w %q from %A:%V,% %v\n" 


${Network Connections}
netstat -tulpn | grep 80                                                        # check applications listening on port 80)
netstat -tpan | grep 443                                                         # to check if server is listening at port 443)
netstat -n --inet                                                                        # check the privileged ports status)
netstat –anr                                                                                 # displays the routing table

ss                                                                                                         # socket statistics and communication connections)
ss -t
ss -a -A udp
ss -ltn

watch

Nload, iftop, iptraf, nethogs, bmon, slurm, tcptrack, Vnstat, cbm, speedometer, Pktstat, Netwatch, Trafshow,Netload, ifstat(Network bandwidth monitor)

$ tcpdump -i eth0 | grep ssh                                                         # Network bandwidth and traffic monitor)

traceroute
traceroute -I <IP>                                                                        # force traceroute with the -I arguement to use ICMP packets.
traceroute -w 3 -q 1 -m 16 example.com                                # -w (wait) -q (query for hop) -m (max hop)
traceroute -n google.com                                                        # To disable IP address mapping in traceroute use the -n option.
traceroute -i wlp3s0b1 google.com                                        # To set the network interface that traceroute should use use the -i option. 

Hop #         RTT 1         RTT 2         RTT 3         Name/IP Address
1.      *       *       *                                     Request timed out.                # If there is no response within a 5.0 seconds (default), an "*" (asterisk) is printed for that probe.
2.      1m      12m     13m     192.168.1.100        Unknown                                        # if a middlebox (like a firewall) blocks the delivery of the ICMP packet then the host with the specific TTL/hoplimit will show up as unknown in traceroute.
3.      18 ms   17 ms   20 ms   cr2.kc9mo.ip.att.net [12.122.150.206]

${Ping Multiple IP/Hosts}
ping 
cat IPADDR.txt|xargs ping                                                         # ping multiple ip addresses in a text file)
`
for i in $(cat IPADDR.txt); do ping ${i} done            # ping multiple ip addresses in a text file)
`
awk '{sub(/,/,"");print "Pinging hostname "$1; system("ping -c 1 "$2) }' <IP addresses/Hosts with space> | grep --color -e 'PING' -e '1 packets'

nmap -sP 7.191.12.140 7.191.12.161 7.191.12.162          # ping multiple ip addresses/ Hosts name)
nmap <multiple IP/hosts> | grep --color -e 'Host is up' -e 'rDNS' -e '161' -e 'All' # to namp multiple hosts or IPs at once)

${Firewall}
Filter Table, NAT Table
iptables -t filter --list
iptables -t nat --list
iptables -t mangle --list
iptables -t raw --list

iptables --list                                                                                 # show rules from filter table
iptables -L                                                                                        # List rules
iptables --list --line-numbers
iptables -L INPUT                                                                        # List input rules 
iptables -L INPUT -v                                                                # aggregated byte size 

iptables -S 
iptables -S TCP

iptables -Z                                                                                 # reset packet counts and aggregated size 
iptables -Z INPUT
iptables -Z INPUT 1                                                                        # clear INPUT rule number 1 only
 

iptables --line-numbers -n -L
iptables -L -n -v | grep 25032
chkconfig iptables on
service iptables start

iptables -D INPUT -m conntrack --ctstate INVALID -j DROP # Delete Rule by Specification
iptables -L --line-numbers                                                        # Delete Rule by Chain and Number
iptables -D INPUT 3

iptables -F INPUT                                                                        # Flush a Single Chain
iptables -F                                                                                        # Flush all chains 

iptables -P INPUT ACCEPT
iptables -P FORWARD ACCEPT
iptables -P OUTPUT ACCEPT

# flush the nat and mangle tables, flush all chains (-F), and delete all non-default chains (-X):
iptables -t nat -F
iptables -t mangle -F
iptables -F
iptables -X


`--- Column fields in IPTables ---
num    – Rule number within the particular chain
target – Special target variable that we discussed above
prot   – Protocols. tcp, udp, icmp, etc.,
opt    – Special options for that specific rule.
source – Source ip-address of the packet
destination – Destination ip-address for the packet

ACCEPT – To let the packet through the firewall
DROP   – To drop the packet on the floor
QUEUE  – Firewall will pass the packet to the userspace.
RETURN – Firewall will stop executing the next set of rules in the current chain for this packet. The control will be returned to the calling chain

-A     - Append one or more rules to the end of the selected chain
-C     - Check  whether  a  rule matching the specification does exist in the selected chain
-D     - Delete  one  or  more rules from the selected chain
-I     - Insert one or more rules in the selected chain as the given rule number. rules are inserted at the head of the chain.
-R     - Replace a rule in the selected chain.
-L     - List all the rules in the selected chain
-S     - Print all rules in the selected chain
-F                 - Detele the given chain or delete all of the rules chain

-p                - protocol allow/disallow, tcp, udp, icmp, all
-s                - source of these network name, hostname, IP-address 
-d                - destination to reach,  network name, hostname, IP-address
-i                 - input-Interface such as eth0
-o                - output-interface such as eth0
-t                 - Table
-m                 - match name
-j                 - target
-dport         - destination port
-sport         - source port
-conntrack - connection track
-ctstate - match state of connection with multiple criteria

-n                 - Display IP address and ports in numeric format
-v                 - display more details, verbose
-t                 - table-name, filter/raw/nat
`

${Intrusion Detection}
HOST-BASED IDS
Tripwire                                                                                         # Host-based Intrusion detection system )
rpm -V <package-name>
rpm -Va                                                                                                # The -Va option verifies all installed packages and finds any failure in its verification tests)
SWATCH http://sourceforge.net/projects/swatch/          # The Simple WATCHer (SWATCH) uses log files generated by syslog to alert administrators)
LIDS http://www.lids.org/                                                         # The Linux Intrusion Detection System (LIDS) is a kernel patch and administration tool)
NETWORK-BASED IDS

$ snort                                                # IDS designed to accurately logging malicious network activity and notifying administrators )

${TCPDump}
$tcpdump                                                                                                # dump traffic on a network
$tcpdump host <target> -w packets.txt                                # capture TCP traffic and dump to packets.txt file
$tcpdump host <targetIP> -w packets.txt &                        # the & tells to run it in background 
$tcpdump -nn -r ~/packets | less                                                # dump whole traffic
$tcpdump -nn -r ~/packets 'dst target_ip_addr' | less # dump only destination IP address traffic 
$tcpdump host target_ip> -w ~/packets


${ Disk }
$ partprobe /dev/sdb
fdisk -l /dev/sdc
fdisk -l |grep Disk                                # Linux current boot disk path.
fdisk -l |grep dev|grep "*"                # Linux boot disk path fine tune
sfdisk -l                                                         # detailed disk output
sfdisk -l|grep dev|grep "*"                # 
lsblk
$ kpartx
$ mkfs -t ext4 /dev/sdc1
mkswap /dev/sdd1
$ swapon -va /dev/sdd1
$ patx -a /dev/sdd
$ partprobe -s
mount
mount -t cifs //pcifs01/AssocAccessPortalFolder$/am028787/Downloads /usr/tideway/tmp
mount -t cifs -o username=****,password=***** //pcifs01/AssocAccessPortalFolder$/am028787/Downloads /usr/tideway/tmp
umount  '/usr/tideway/SMB'                        # unmount the directory

dd
dd if=/dev/sda of=/tmp/mbrsda.bak bs=512 count=1         # copy MBR from /dev/sda to mbrsda.bak file)
dd if=/tmp/mbrsda.bak of=/dev/sdb bs=446 count=1         # restore MBR to /dev/sdb)

du -hs logs/
du -h /usr/tideway | sort -n -r | head -n 10F
du -ah /usr , du -ah /mnt/addm/db_data                                 # folder size used)
du -sch /usr                                                                                # give size of folder /usr in MB, GB
du -sch /usr/*                                                                                # give size of all directories under folder /usr 

du -sh * | grep G                                                                        # folders with gigabytes in size
du -sh * | grep M                                                                        # folders with megabytes in size


df -h /usr , df -h /mnt/addm/db_data                                  # folder size total)
$ tune2fs -l /dev/sda1                                                                 # gives raw information on disk)
$ badblocks -v /dev/sdb1
fsck
lsblk -l                                                                                        # show a list of installed disks)
lsblk /dev/sdb                                                                                # show an information of partition disk b)
blkid
$ sfdisk -l                                                                                        # get a list of installed disks)
cfdisk
$ parted

$ iozone                                                                                         # It is an open source file system benchmarking utility.
$ wget http://www.iozone.org/src/current/iozone3_394.tar
tar xvf iozone3_394.tar 
cd iozone3_394/src/current
make
make linux

${NFS and CIFS}
mount -t cifs <//win-ip/folder> /mnt

${MEMORY PROCESS}
top
top -p [PID]                                                                                # to show inididual process)
top -p 15795                                        # to check the java process)
top -o %MEM -b -n 1|head -n 12|tail -6                        # Top memory consuming processes in Linux using top command.
top Zombie - look for it
`
        < > - move arround column sorting
        M - sort on memory column
        F - Set sort column
        f - add column fields
        z/b - color/mono, bold/reverse
        Z/B - set color/set bold
        u - user specific processes, blank for all
        k/r - kill or renice
        W - update TOP config file for changes
`
$!ps
ps auxw                                                                                                # detailed view of all process
ps axjf                                                                                                # detailed view in graphical mode
ls -ltr | sort -n -k 5
ps auxw
ps auxw | grep model/main.py
ps -e -o pid,args --forest
ps -fl -C "java"                                                                        # To check individual process
ps -el | grep Z                                                                                # catch the zombie process
ps -eo pid,ppid,cmd,%mem --sort=-%mem | head                # Finding out  top memory consuming processes

watch "ps -eo pid,ppid,cmd,%mem --sort=-%mem | head" # Continuously monitoring top memory consuming processes
$pidof <service>                                                                                # to grab pid of running service
$pidof sshd                or        ps -eZ | grep sshd                                # to get process id's of sshd, alternate: ps -eZ | grep sshd
$pgrep sshd
nice [priority-no.] [process-ID]                                        # to change process priority, The “NI” column in ps output indicates the current nice value)
nice 10 112233                                                                                # niceness numbers are -20 to 20)
nice -n 5 java                                                                                # change priority of running process)
$renice                                                                                                # to change priority of running process)-f1 
$renice -n 10 -p java
$renice -n 5 -g mygroup                              # Change the Priority of All Processes that Belongs to a Group)
$renice -n 5 -u root                                                                 # Change the Priority of All Processes Owned by User)
/etc/security/limits.conf                                                        # hard code process priority as, [username] [hard|soft] priority [nice value])
$pstree
$pmap -x [PID]                                                                                # report memory map of a process)
$vmstat -s
$mpstat                                                                                                # report processors related statistics)
$mpstat -P ALL -u 2 3 

kill <process-id> -u <user-name>
killall5                                                                                         # it will kill all processes including SSH

${SERVICES}
chkconfig [--level <levels>] [--type <type>] <name> <on|off|reset|resetpriorities>
chkconfig --level 3 sshd on
chkconfig --level 345 sshd on
chkconfig --level 3 sshd off
chkconfig --list sshd
chkconfig --add <service-name>
chkconfig --del <service-name>
service <service-name> start
systemctl list-units --type service --all
systemctl status httpd.service

${Permission, ownership}
chown tideway:tideway etc
chmod 750 etc
chown tideway:tideway twcfg.txt twpol.txt
chmod 640 twcfg.txt twpol.txt
$getfacl                                                                                        # itemize the output by permission, owner etc)
$getfacl /etc/passwd
$stat /etc/passwd                                                                # show detials of every possible settings on a file)

alias (~/.bashrc file for root, unhide this file by command ls -a in ~ folder, http://www.cyberciti.biz/tips/bash-aliases-mac-centos-linux-unix.html)
alias cls='echo -e "\033c"'
alias cls='printf "\033c"'
unalias aliasname                                                                 # to remove the alias from ~/bashrc)

${Processor Information is incorrect}
cat /proc/cpuinfo
lscpu 
grep -C processor /proc/cpuinfo 
$psrinfo -v                                                                                 # Solaris from /proc/cpuinfo)
$dmidecode 

${login information}
check login history (/var/log/wtmp and /var/log/lastlog file to save login history)
last | more
last | head -10                                                                 # Check last 10 logs)
last <user name>                                                                 # Check particular user)
$lastlog                                                                                        # This information is in "/etc/log/lastlog" file. It is then sorted according to entries in the "/etc/passwd" file)
$lastlog | grep Never | awk '{print $1}'                 # To generate a list of all the accounts that have never been logged into, use a command like this)
od -xc /var/log/lastlog | more                                         # Check last login sessions)
$lastlog -b 30 (/var/log/lastlog)

$w -uh                                                                                         # Get running processes of logged in user)
$w -u <User-Name>                                                                # Watch processes of particular user
who                                                                                         # Get user and processes of logged in user )
$users                                                                                         # Currently logged in user)
$whoami                                                                                         # Get named you are logged in)
who am i                                                                                 # Get name you logged in with details)
ls /home/                                                                                 # It will give manually created users directories)

find / -user <user-name> -mtime +1                                # Find files particular user modified in last 24 hours
find / -user AM1234 -mtime -1                                        # Find user AM1234 files, changed in last 1 day

auditctl 
ls /home/                                                                                 # it will give manually created users directories)

$ faillock                                                                # Tool for displaying and modifying the authentication failure record files
$ faillock --user <username>                        # The user whose failure records should be displayed or cleared.
$ faillock --dir                                                # The directory where the user files with the failure records are kept
$ faillock --reset                                                 # Instead of displaying the user's failure records, clear them.
/var/run/faillock/*                                                # the files logging the authentication failures for users

${ User Account }
grep <user name> /etc/passwd                                        # find if user account exist
grep root /etc/passwd                                                        # find the root account exits
useradd 
useradd -m -G tideway -s /bin/bash <NEWUSER>
passwd <NEWUSER>                                                                 # give temporary password)
passwd -l/-u <user-name>                                                # to lock/unlock user account)
usermod -L/-U <NEWUSER>                                                 # lock/unlock user immediately)
chage -d 0 <NewUser>                                                         # To force user to change password at first time login
usermod -U <NEWUSER>                                                        # unlock user account
chage -l <UserName>                                                                # check the user aging information, such as expire date, time etc)
chage -I -1 -m 0 -M 99999 -E -1 username

-d, --lastday LAST_DAY  If the LAST_DAY is set to 0 the user is forced to change his password on the next log on.
-E, --expiredate EXPIRE_DATE  Set the date or number of days since January 1, 1970 on which the users account will no longer be accessible 
-I, --inactive INACTIVE   Set the number of days of inactivity after a password has expired before the account is locked.
-M, --maxdays MAX_DAYS    Set the maximum number of days during which a password is valid.
-W, --warndays WARN_DAYS  Set the number of days of warning before a password change is required.

chage -I -1 -M 60 -I 30 -E -1 -W 7 <user name>
userdel -r username                                                                # delete user and his home directory)
deluser –remove-all-files username                                # Delete user account & his home directory, personal files located in different locations which you are not aware.)
deluser –backup-to DIR username                                        # Delete user account and take backup of his files to a directory for future use by the company)
deluser –backup-to /var/backup don                                # I want to delete user account Don and take backup of all his files to /var/backup)
.bash_profile                                                                        # to setup a behavior or scripts for user)
.bash_logout                                                                        # to setup a behavior on logout or scripts for user)
$vipw
$vigr
id <user-name>                                                                        # to get particular user information)
$pwck

${Files and Directories}
grep somestring /etc/group
grep somestring /etc/shadow
grep somestring /etc/gshadow
grep somestring /etc/passwd
awk -F':' '{ print $1}' /etc/passwd | column         # List all user accounts in the system)
awk -F':' '{ print $1}' /etc/passwd | column         # List all user accounts in the system)

chmod
1   2   3   4
-   rwx rwx rwx
dir usr grp other

`a (all (everyone)), u (user), g (group), o (other), 
+ or - to add/remove settings), 
equals sign =, add new permissions and remove the old

[ r (read) = 4 w (write) = 2 x (execute) = 1
Numbers can be added together, it can specify read/write/execute permissions; read+write = 6, read+execute = 5, read+write+execute = 7]`

chmod u+rw filename                                                                # grant current user to read + write)
chmod go+rw filename                                                        # grant group and other to read and execute 
chmod o-rwx somefile                                                        # restrict others from read, write and execute)
chmod a=rx somefile                                                                # all will get read and execute)
chmod 777 somefile                                                                # everyone read/write/execute permission on file, 1st number is user, 2nd is group and 3rd is everyone else/other)
chmod 1700 somedirectory                                                 # where 1 = sticky bit, Only the person who created the file within a directory may delete it)
chmod 0700 somefile                                                         # where the zero would mean no sticky bit)
chown owner:group filename
chmod +t somedirectory
chmod -t somefile
`
-: "regular" file, created with any program which can write a file
b: block special file, typically disk or partition devices, can be created with mknod
c: character special file, can also be created with mknod (see /dev for examples)
d: directory, can be created with mkdir
l: symbolic link, can be created with ln -s
p: named pipe, can be created with mkfifo
s: socket, can be created with nc -U
D: door, created by some server processes on Solaris/openindiana.
`
chattr                                                                                         # Change file system attributes
chattr +i /sbin/lilo.conf                                                # The +i will prevent any changes (accidental or otherwise) to the “lilo.conf” file
lsattr                                                                                        # This will list if whether a file has any special attributes as set by chattr
lsattr /directory/or/file
`
If a file is accessed with ‘A‘ attribute set, its atime record is not updated.
If a file is modified with ‘S‘ attribute set, the changes are updates synchronously on the disk.
A file is set with ‘a‘ attribute, can only be open in append mode for writing.
A file is set with ‘i‘ attribute, cannot be modified (immutable). Means no renaming, no symbolic link creation, no execution, no writable, only superuser can unset the attribute.
A file with the ‘j‘ attribute is set, all of its information updated to the ext3 journal before being updated to the file itself.
A file is set with ‘t‘ attribute, no tail-merging.
A file with the attribute ‘d‘, will no more candidate for backup when the dump process is run.
When a file has ‘u‘ attribute is deleted, its data are saved. This enables the user to ask for its undeletion.
+ : Adds the attribute to the existing attribute of the files.
– : Removes the attribute to the existing attribute of the files.
= : Keep the existing attributes that the files have.
`

${Access Control List ACLs}
$ getfacl                                                 # which displays the currently configured access to directory or to file.
$ setfacl                                                 # which actually set the user access control for to directory or to file.

${Schedule Jobs}
/etc/crontab
crontab e                                                                                        # to edit or create crontab file
crontab -l                                                                                        # list all running schedule 
crontab -r                                                                                 # remove or delete all cron jobs
crontab -r -u user-name                                                        # delete job of specific user
1 2 3 4 5 /path/to/command arg1 arg2
1 2 3 4 5 /path/to/command
at <time> <job>

Where,

1: Minute (0-59)
2: Hours (0-23)
3: Day (0-31)
4: Month (0-12 [12 == December])
5: Day of the week(0-7 [7 or 0 == sunday])
/path/to/command – Script or command name to schedule
`
Directory                        Description
/etc/cron.d/                Put all scripts here and call them from /etc/crontab file.
/etc/cron.daily/        Run all scripts once a day
/etc/cron.hourly/        Run all scripts once an hour
/etc/cron.monthly/        Run all scripts once a month
/etc/cron.weekly/        Run all scripts once a week
`
Anacron                                                                 # Anacron is used to execute commands periodically, with a frequency specified in days. 
vim /etc/anacrontab

`START_HOURS_RANGE :                                         # The START_HOURS_RANGE variable sets the time frame, when the job could started. 1-daily, 7-weekly, 30-monthly, N-Any
period in days:                                                 # This is a numeric value that specifies the number of days.
delay in minutes:                                                # The delay in minutes, X number of minutes anacron will wait before executing the job after the machine starts.
job-identifier:                                                        # It is the name for the job’s timestamp file. It should be unique for each job. 
command:                                                                # Command or shell script that needs to be executed.
`

${SSH access}
ssh_config is for ssh clients (i.e running ssh from the command line) and sshd_config is for the sshd server.
add following to file `/etc/ssh/sshd_config`

# User account authentication
Edit the /etc/ssh/sshd_config file.
Change        PasswordAuthentication yes 
and         ChallengeResponseAuthentication yes
Add         AllowUsers aamir
Restart ssh /etc/init.d/ssh restart.
Better you use service sshd restart

# Root account authentication
PermitRootLogin yes                                
AllowUsers root                                                # allow root access
DenyUsers root
DenyGroups root

# Other settings on demand
AllowUsers user1 user2
AllowGroups group1 group2
DenyUsers user1 user2 user3                                # deny user from access)
DenyGroups group1 group2

watch "tail -n -20 /var/log/secure | grep sshd"    (# to trace any problem with sshd login)

# SHH PUB/PRIV key access -- change sshd_config
.ssh and everything under it should be owned by the user itself and only the user should have permission. 
chown -R <user> ~<user>/.ssh; chmod 700 ~<user>/.ssh;chmod 600 ~<user>/.ssh/authorized_keys should do the trick.

SELinux on RedHat/CentOS 6 has an issue with pubkey authentication, probably when some of the files are created selinux is not setting its ACLs correctly. To manually fix the SElinux ACLs for the root user:
restorecon -R -v /root/.ssh

Gerate Key using Putty Key Generator (PuttyGen) - PuttyGen will create a public key file that looks like:

$ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAvXTiVAsUZoTUwKQBO7o3t2H5mrCUhElrgBgWO6DVv1+j92HOqkzV3vjw+1oN8zlcwP56t43m4EGNzhnJZZrQunvFBQMM4wSqAN5Z35WtLWu2lk2A0HzGaVTAjhRMJ+/4uEEtV41+S7d0kDLNvGeZ7e3C0uiuQRYtX4VDcEhPrvnFmtzLbTD4GeCXeg2/k5oxVlNWhKDcX/auCEju6duU41RPBRYilDXYogMQmQyHmaybUmMenGS1VM3C/fZ8SsTTPCM/2Y+OTwNA43XaFqcD26Yd4uEXxQ3eCGRN68DssNJD3bueTARxGVPvXL4JyzmLQHHSnWr4lny0vEkuo7x6qQ== rsa-key-20190729

Open the key in PuttyGen, and then copy it from there (this results in the key being in the right format and in 1 line):
Paste this into authorized_keys then it should work.

RSAAuthentication                yes
PubkeyAuthentication        yes
AuthorizedKeysFile      .ssh/authorized_keys
AllowUsers <user-name>
AllowUsers root
service sshd restart
ssh -vvv user@<host-name>                                                 # deep method for ssh debugging by using -vvv

# SSH access with password  
create user account and password
Add user to sshd_config file
AllowUsers user
service sshd restart

# Retrieve Your Public Key from Your Private Key
$ssh-keygen -y

# SSH access through Public/Private key, https://www.digitalocean.com/community/tutorials/how-to-configure-ssh-key-based-authentication-on-a-linux-server
/home/user
mkdir .ssh
Copy the public key to ~/.ssh/authorized_keys folder on the remote machine
e.g,. cp id_rsa.pub /home/user/.ssh/authorized_keys
Depends on desktop environment, a window may appear prompting for a password. Otherwise, Linux prompt will appear. This password is the passphrase you created for the private key encryption.

# Reverse SSH Tunnel
https://www.howtogeek.com/428413/what-is-reverse-ssh-tunneling-and-how-to-use-it/
ssh -fN -R 7000:localhost:22 username@yourMachine-ipaddress                # To create SSH reverse tunneling on remote host
`
        
    The -R (reverse) option tells ssh that new SSH sessions must be created on the remote computer.
    The “7000:localhost:22” tells ssh that connection requests to port 7000 on the local computer should be forwarded to port 22 on the remote computer. Port 7000 was chosen because it is listed as being unallocated. It isn’t a special number.
    username@<yourMachine-ipaddress> is the user account the remote computer is going to connect to on the local computer.

`
ssh username@yourMachine-ipaddress -p 7000                                                                        # connect from external to remote host



${Audit Linux files}
auditctl                                                                         # a command to assist controlling the kernel’s audit system. You can get status, and add or delete rules into kernel audit system. Setting a watch on a file is accomplished using this command)
ausearch                                                                         # a command that can query the audit daemon logs based for events based on different search criteria)
$aureport                                                                        # a tool that produces summary reports of the audit system logs)
$auditd                                                                                # RHLE built-in audit service, 
        chkconfig --list auditd 
        service auditd status 
        chkconfig auditd on 
        service auditd start
        grep num_logs /etc/audit/auditd.conf
                The num_logs should me equal to 5, num_logs = [NUMLOGS] and max_log_file = 6 
        grep max_log_file_action /etc/audit/auditd.conf
                max_log_file_action = [ACTION], max_log_file_action "rotate" 
        grep EACCES /etc/audit/audit.rules 
        grep EPERM /etc/audit/audit.rules
        auditctl -l | grep syscall | grep mount                        (#to check file mount enabled or disable)
        auditctl -l | grep syscall | grep -w unlink                (#to check file deletion enabled)
        auditctl -l | grep syscall | grep -w unlink                (#to check renaming the files)
        auditctl -l | grep "watch=/etc/sudoers"                        (#to check audit is configure for system adminitrator actions)
                -w /etc/sudoers -p wa -k actions add to /etc/audit/audit.rules
        auditctl -l | grep syscall | grep init_module        (#to check loading and unloading module activities)
        grep active /etc/audisp/plugins.d/syslog.conf, If the "active" setting is missing or set to "no", then set it to yes. (forward logs to syslog service)
        /etc/grub.conf                If they include "audit=1", then auditing is enabled at boot time
                kernel /vmlinuz-version ro vga=ext root=/dev/VolGroup00/LogVol00 rhgb quiet audit=1

${Common Linux log files names and usage}
/var/log/dmesg
/var/log/messages :                                                 # General message and system related stuff
/var/log/auth.log :                                                 # Authenication logs
/var/log/kern.log :                                                 # Kernel logs
/var/log/cron.log :                                                 # Crond logs (cron job)
/var/log/maillog :                                                         # Mail server logs
/var/log/qmail/ :                                                         # Qmail log directory (more files inside this directory)
/var/log/httpd/ :                                                         # Apache access and error logs directory
/var/log/lighttpd/ :                                                 # Lighttpd access and error logs directory
/var/log/boot.log :                                                 # System boot log
/var/log/mysqld.log :                                                 # MySQL database server log file
/var/log/secure or /var/log/auth.log :                 # Authentication log
/var/log/utmp or /var/log/wtmp                                # Login records file
/var/log/yum.log :                                                         # Yum command log file.
/var/log/lastlog

/var/log/messages : General message and system related stuff
/var/log/auth.log : Authenication logs
/var/log/kern.log : Kernel logs
/var/log/cron.log : Crond logs (cron job)
/var/log/maillog : Mail server logs
/var/log/qmail/ : Qmail log directory (more files inside this directory)
/var/log/httpd/ : Apache access and error logs directory
/var/log/lighttpd/ : Lighttpd access and error logs directory
/var/log/boot.log : System boot log
/var/log/mysqld.log : MySQL database server log file
/var/log/secure or /var/log/auth.log : Authentication log
/var/log/utmp or /var/log/wtmp : Login records file
/var/log/yum.log : Yum command log file.

${Tripwire}
folder:- /usr/tideway/tripwire
./tripwire-check                                                         #check what files are changed on ADDM appliance through tripwire /usr/tideway/tripwire/etc)
./twadmin        (--print-profile)
./tripwire
./siggen
./twprint   (./twprint -m r|--print-report -twrfile /usr/tideway/var/tripwire/report/ADDMCONCRTLS01-20160218-205502.twr > /usr/tideway/tripwire)
./tripwire-setup-keyfiles

${Messaging}
mail --help
/etc/postfix
vi main.cf
        relayhost=[mail.server.com]:port
        smtp_sasl_auth_enable=yes
        smtp_sasl_password_maps=hash:/etc/postfix/sasl_passwd
        smtp_sasl_security_options=noanonymous
        smtp_tls_CAfile=/etc/ssl/certs/ca-certificates.crt
        smtp_use_tls=yes
vi sasl_passwd (create a password file if needed by adding [smtp.server.com]:port email@server.com:password)
        postmap hash:/etc/postfix/sasl_passwd
        chown root:root /etc/postfix/sasl_passwd
        chmod 600 /etc/postfix/sasl_passwd
        cat /etc/ssl/certs/Thawte_Premimum_Server_CA.pem | sudo tee -a /etc/postfix/cacert.pem
        /etc/init.d/postfix reload

echo "Test mail from addmCONcrtLS01" mail -s "Test mail" Emir.Dukhtar@example.com

$wall -n <message>                                                                # it will broadcast message to everyone on the server)
echo "here is a new message" > /dev/pts1                # This message will pop up to only user on pts1 terminal)


${Rooting Linux}
Each process/command on Linux and Unix-like system has current working directory called root directory of a process/command. You can change the root directory of a command using chroot command, which ends up changing the root directory for both current running process and its children.

chroot

${Editors}

vi / vim                                        # command mode, insert mode

        i                                                # activate insert
        a                                                 # append after a cursor
        d                                                # delete a character
        dd                                                # delete a whole line
        2dd                                                # delete 2 following lines and so on....
        dw                                                # delete following word
        x                                                # delete a single character and move line to left
        yy                                                # copy a line
        p                                                # paste a line 
        u                                                # undo the previous changes
        /<string>                                # search for a string
        / + enter                                # search next appearance of same string
        :set number                                # set line numbers)
        :set fileformat=unix         # file is non unix, run this if get error M^)
        :w                                                # write to a file
        :q                                                # quit to a file
        :q!                                                # forcefully quit with committing changes
        :wq                                                # save a file and quit
        :zz                                                # scroll file up
        :split                                        # multiple screen for same files
        :vsplit                                        # vertical split, doesn't work in vi
        :split <file-name>                 # two split screen for two different files
                ctrl+w                                # navigate between screens
        ESC                                                # deactivate edit mode
        :w
        :q or q!
        :dd                                                # delete lines) - e.g., 2dd delete 2 lines
        :D                                                # delete single line)
        :dw                                                # delete a word)
        :x                                                # delete a character)
        :i                                                # insert)
        :a                                                # append)
        :u                                                # undo)
        :/<search word> case sensitive
        :zz                                                # save file and quit)
        :split                                        # multiple files and screens)

$ nano <switch> <fileName>
ctrl+g or ctrl+G                        # help
ctrl+O                                     # to save file
ctrl+W                                     # to search for a string
alt+W                                   # to move to next search word
alt+c                                                # show line number
ALT + A errow keys                        # highlight text                                 
ALT + 6                                                # Copy
CTRL + U                                        # Paste
nano --const                                # to show cursor position and line number
nano -m/--mouse                        # enable mouse use
nano -D                                        # Bold editor text


`Sudoers Editor`
$visudo                                                # Same as Vi editor, but built for sudoers file
/etc/sudoers                                # file visudo edits

${OpenSSL and Httpd}
openssl --> openssl >                                                                                (# entering Openssl give its terminal control)
openssl enc --help
openssl smime --help
openssl cms --help
openssl pkeyutl --help
openssl rsautl --help
openssl genrsa --help
openssl gendsa
openssl ecparam --help
openssl s_server --help
openssl dgst --help
openssl asn1parse --help
openssl > x509 help
openssl ciphers $ {cipherspec}                                                                         # will give all the Ciphers could run on the server)
openssl ciphers $ {cipherspec} | sed 's/:/\n/g' | grep CBC          # Give a list of all Ciphers being used by CBC)
grep -i -r "RC4" /etc/httpd                                                                          # gives all RC4 related or CBC)
grep -i -r "CBC" /etc/httpd                                                                          # gives all CBC related strings)
openssl ciphers -V                                                                                          # to check all the available ciphers in openssl)
openssl ciphers -v 'ALL:COMPLEMENTOFALL' | grep TLSv1.2
openssl ciphers -v 'HIGH'                                                                                # list the ciphers belongs to high
openssl ciphers -v 'kEECDH+aECDSA+AES:kEECDH+AES+aRSA:kEDH+aRSA+AES' | column -t                # omits all insecure ciphers, list ensuring perfect forward secrecy
openssl s_client -crlf -connect addmCONcrtLS01:443                                 # Test HTTPS encryption and certificates chain, supported protocol)
openssl ciphers -v | column -t | grep ECDHE-RSA-AES128-GCM-SHA256
openssl s_client -connect addmCONcrtLS01:443 -tls1                                 # find out system supports TLS1, for other check use “-tls1_1 or -tls1_2”)
openssl s_client -connect addmcrtkc01:25032 -tls2                                # check TLS layer for consolidation server, use -tls1, -tls1_1, -tls1_2, 
openssl version                                                                                                        # to check the open SSL version)
openssl ciphers -v                                                                                                 # to find out the supported and available ciphers)
echo -n | openssl s_client -connect www.google.com:443                         # To check a website using cipher suite)
whereis httpd                                                                                                        # which files httpd process is expected)
 /usr/sbin/httpd -V                                                                                                # which files the process will use)

openssl genrsa -out <server-name.key> 2048                                                # It will generate a key
openssl req -new -key <server-name>.key -out <server-name>.csr         # it will generate certificate signing request (*.CSR)
openssl x509 -req -days 365 -in addmdevls01.csr -signkey addmdevls01.key -out addmdevls01.crt        # it will generate a self-signed cert

openssl req -newkey rsa:2048 -nodes -keyout <server-name>.key -out <server-name>.csr                # generate csr and key together
           
openssl s_client -showcerts -connect server:443 > cacert.pem
openssl x509 -inform der -in certificate.cer -out certificate.pem
openssl x509 -in server.crt -out server.pem -outform PEM (/usr/tideway/etc/https/server.crt, /etc/httpd/conf/ssl.crt/server.crt, /etc/httpd/conf/ssl.crt/server.pem)
 When openssl is not available on your system you could alternatively convert certificates with the java keytool.
openssl enc -aes-256-cbc -in tecmint.txt -out tecmint.dat
openssl enc -aes-256-cbc -d -in tecmint.dat > tecmint1.txt
nmap --script ssl-enum-ciphers -p 443 addmCONcrtLS01                          # Check and give the list of all supported ciphers)
netstat -tpan | grep 443                                                                                 # to check if server is listening at port 443)
https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/7/html/Security_Guide/sec-Hardening_TLS_Configuration.html

${Apache TOMCAT}
TomCat cd /usr/local/tomcat/bin/
./version.sh                                                                                                        # show the tomcat version)
./shutdown.sh
tomcat/lib/log4j.properties                                                                                # Setting up the log level error messages)
$CATALINA_HOME/bin/catalina.sh start -security                                        # Once you have configured the catalina.policy file for use with a SecurityManager, Tomcat can be started with a SecurityManager in place by using the "-security" option:)
http://wiki.apache.org/tomcat/FAQ/Miscellaneous#Q6
http://tomcat.apache.org/tomcat-5.5-doc/security-manager-howto.html
http://tomcat.apache.org/tomcat-5.5-doc/logging.html
https://www.owasp.org/index.php/Securing_tomcat

httpd -v                                                                                                                # to check the apache version)
$httpd2 -v                                                                                                                # to check the version of the apache
httpd –M                                                                                                                 # To get the apache loaded modules)

./java -version                                                                                                        # log to the Java installed directory, if Java environment variables not set)
$java -version
$java -XshowSettings:properties -version
$javac -version
rpm -qa | egrep -i "(jdk|jre)"                                                        
./version.sh                                                                                                        # Apache Tomcat version under /usr/local/tomcat/bin)
cat RELEASE-NOTES | grep "Apache Tomcat Version"                                # Apache Tomcat version under /usr/local/tomcat)
/etc/init.d/tomcat version                                                                                # If Tomcat is installed as a service)



${Single User Mode}
Configuration to prompt root password when making changes through GRUB
 sulogin                        # can login to shell with root password
 sushell                        # can login to shell without root password

Add the following line to /etc/sysconfig/init:      
 SINGLE=/sbin/sulogin 
OR
 SINGLE=/sbin/sushell
 
${BusyBOX commonly used Linux commands in one package}
 Usage: busybox [function] [arguments]...
 
 
 ${screen}
 
 screen                                                         # Screen command is a way to attach and detach to a command without killing the process
 $> screen                                                # start a session
 Ctrl+a or Ctrl+d                                # Detach from session
 screen -r [name or screen]                # reattach
 screen -v                                                 # check if have a screen session is on
 screen -S <screen name>                # to create a screen with name
 screen -Sdm <scr name>                        # create a screen for later use)
 screen -ls                                                # list number of active screens
 screen -d                                                # detach a screen)
 screen -r <Screen ID>                        # attach a screen)
 Ctrl+a                                                        # switch between sessions only if have 2 or more sessions)
 Ctrl+shift+A and n                        (# Switch between multiple screens)
 Ctrl+shift+A and p                        (# Switch between previous screens)
 Ctrl+shift+A and x                        (# Lockout the screen)
 Ctrl+shift+A and d                        (# detach a screen or exit to finish session)
 Ctrl+shift+A and K                        (# to kill the screen)
 press Ctrl+a, shift+?                (# press Ctrl+A and release and then press Shift+?,  to get screen commands help)
 Ctrl+a and ""                                (# show number of screens)
 Ctrl+a TAB                                        (# switch to split windows)
 Ctrl+a Shift+s                                (# Split to more screens)        [hit Alt+c to get a new bash prompt]
 Ctrl+a Shift+x                                (# to end opened bash terminal)
 screen -X -S TODO quit         (# quit the screen session)
 
password lock screen: you can edit “$HOME/.screenrc” file. If the file doesn’t exist, you can create it manually and add a line password crpt_password, use mkpassword for cryptsetup
screen reads the /etc/screenrc and ~/.screenrc (Customize the screen)

${Create account with ROOT prilileges}
useradd -ou 0 -g 0 <UserName>
passwd <UserName>
You won't be able to delete second root user with another UID 0 using userdel command. To delete user john with UID 0, open /etc/passwd file and change john's UID to something else, shown below.
<UserName>:x:0:0::/home/john:/bin/sh        to        <UserName>:x:1111:0::/home/john:/bin/sh
userdel <UserName>
Another method below
adduser -ou 0 -g 0 -G root -s /bin/bash -r srv_nexpose -p nexpose

${tput - screen control and color}
tput clear                                                        # clear the screen
tput cup 3 15                                                # Move cursor to screen location X,Y (top left is 0,0)
tput rev                                                        # Set reverse video mode
tput bold                                                        # Set bold mode 

${Secure Access}
scp                                                                        # secure copy, remote file copy program)
scp -r user@hostserver.com:/home/user/data_files/ /opt/backup/                (Backup files)
ssh                                                                        # remote shell login
$ssh-add                                                        #adds private key identity to the authentication agent)
$ssh-keysign                                                # ssh helper program for host-based authentication)
$ssh-keyscan                                                # gather ssh public keys)
$ssh-keygen                                                        # authentication key generation, management and conversion)
$sshd                                                                # OpenSSH SSH daemon)
$ssh-agent                                                        # authentication agent)
$sftp                                                                # secure file transfer program
$sftp-server                                                # SFTP server subsystem)
$rsh                                                                # remote shell)
$rlogin
$rexec
$rcp
$isakmpd                                                        # ISAKMP/Oakley a.k.a. IKEv1 key management daemon)
openssl                                                        # OpenSSL command line tool)
$openssh                                                         # multiplexer for Linux)

$sftp username@hostname
Available commands:
        `
        bye                                Quit sftp
        cd path                            Change remote directory to 'path'
        chgrp grp path                     Change group of file 'path' to 'grp'
        chmod mode path                    Change permissions of file 'path' to 'mode'
        chown own path                     Change owner of file 'path' to 'own'
        df [-hi] [path]                    Display statistics for current directory or filesystem containing 'path'
        exit                               Quit sftp
        get [-afPpRr] remote [local]       Download file
        reget [-fPpRr] remote [local]      Resume download file
        reput [-fPpRr] [local] remote      Resume upload file
        help                               Display this help text
        lcd path                           Change local directory to 'path'
        lls [ls-options [path]]            Display local directory listing
        lmkdir path                        Create local directory
        ln [-s] oldpath newpath            Link remote file (-s for symlink)
        lpwd                               Print local working directory
        ls [-1afhlnrSt] [path]             Display remote directory listing
        lumask umask                       Set local umask to 'umask'
        mkdir path                         Create remote directory
        progress                           Toggle display of progress meter
        put [-afPpRr] local [remote]       Copy a file from the local computer to the remote host. 
        pwd                                Display remote working directory
        quit                               Quit sftp
        rename oldpath newpath             Rename remote file
        rm path                            Delete remote file
        rmdir path                         Remove remote directory
        symlink oldpath newpath            Symlink remote file
        version                            Show SFTP version
        !command                           Execute 'command' in local shell
        !                                  Escape to local shell
        ?                                  Synonym for help
        `

sftp> lpwd                                                                        # Local working directory: /home/local_username
sftp> pwd                                                                        # remote working directory on FTP server

sftp> lls                                                                        # List local directory
sftp> ls                                                                         # List remote directory on FTP server 

sftp> lcd                                                                        # Change local directory
sftp> cd                                                                         # Change remote directory on FTP server

sftp> put filename.zip                                                # will copy local file to remote directory
sftp> put -r locale_directory                                # To upload a local directory
sftp> reput filename.zip                                        # To resume an interrupted upload

sftp> get filename.zip                                                # To download a single file from the remote server
sftp> get filename.zip local_filename.zip        # save the downloaded file with a different name
sftp> get -r remote_directory                                # To download a directory from the remote system, use the recursive -r option
sftp> reget filename.zip                                        # If transfer fails or interrupted, resume it using the reget command.

sftp> mkdir directory_name                                        # Create a new directory on the remote server
sftp> rmdir directory_name                                        # Delete a directory on the remote server

sftp> rename file_name new_file_name                # Rename a file on the remote server
sftp> rm file_name                                                        # Delete a file on the remote server
sftp> chmod 644 file_name                                        # Change the permissions of a file on the remote system
sftp> chown user_id file_name                                # Change the owner of a file on the remote system
sftp> chgrp group_id file_name                                # You must supply the user ID to the chown and chgrp commands.


${Secure Shell}
# vCenter console is different than SSH console, if SSH doesnt work then try login through vCenter, and if that doesn't work then try grub reset
ssh user1@server1 command1
ssh user1@server1 'command2'
ssh user1@server1 'command1 | command2'
ssh -p 443 user@ipaddress
ssh userName@host 'echo $HOME'
ssh tideway@addmConCrtLS01 /usr/tideway/bin/tw_checkuser --version                (#remote script run on the remote server)
ssh root@MachineB 'bash -s' < local_script.sh                                                        (#local Script run to the remote server)
ssh user@host  '/scripts/backup.sh'                                                                                (#execute remote script)
ssh -t user@hostname 'sudo command'                                                                                (#for sodu command)
ssh user@host su -c "/path/to/command1 arg1 arg2"                                                        (#for su command)
ssh user@host su --session-command="/path/to/command1 arg1 arg2"                        (#session specific commands)
ssh user@host su --session-command="/sbin/service httpd restart"

        `ssh user@host << EOF        (read input from the current source (HERE) until a line containing only word (HERE) is seen:runs multiple commands on a remote system:)
         date
         hostname
         cat /etc/resolv.conf
        EOF`

cat newScript.bash | ssh user@host                (pipe script to remote host)

ssh -f -L {local-port}:localhost:{remote-server-port} user@remote.server.com                (# SSH has feature called port forwarding, also known as tunneling)
ssh -f -L 3001:localhost:3001 user@host

${CURL Commands https://curl.haxx.se/docs/manpage.html}
curl ifconfig.me                                                                                                                        (# get your external IP address)
curl ifconfig.me/IP or /host or /port /ua

curl http://addmconcrtls01/ui
curl -k https://addmconcrtls01/ui or curl -insecure https://addmconcrtls01/ui
curl --cacert cacert.pem https://server/ [and the rest]
curl --cacert server.pem https://myhost.example.com:443
curl --cacert server.pem https://myhost.example.com:443/ui/
curl --user name:password http://www.example.com                                                        # using user name and password)
curl --location http://myhost.example.com:443                                                                # Sevrer tell the location of actaul starting page)
curl http://www.centos.org > centos-org.html                                                                # store out put to a file)
curl -u ftpuser:ftppass -O ftp://ftp_server/public_html/xss.php                        # download a file from FTP)
curl -u ftpuser:ftppass -O ftp://ftp_server/public_html/                                        # list all the files under this directory)
curl -u ftpuser:ftppass -T myfile.txt ftp://ftp.testserver.com                                # upload files to FTP server)
curl dict://dict.org/d:bash                                                                                                # check definition of bash from dictionary)
curl dict://dict.org/show:db                                                                                                # shows database of dictionaries)
curl --mail-from blah@test.com --mail-rcpt foo@test.com smtp://mailserver.com                (# Send email)
curl -v telnet://7.40.2.47:443                                                                                                # check active port)
curl -k -v https://7.40.2.47:443/agent/Status                                                                # Check vCenter agent status)
curl -k -v https://7.40.2.47:443/api/versions                                                                # check vCenter version)
curl -k -v https://7.40.2.47:443/mob                                                                                # vCenter)
curl -R -O http://www.lua.org/ftp/lua-5.3.3.tar.gz
        tar zxf lua-5.3.3.tar.gz
        cd lua-5.3.3
        make linux test

${Wget command}
wget --random-wait -r -p -e robots=off -U mozilla http://www.example.com                (# download entire website)
wget --mirror -p --convert-links -P ./LOCAL-DIR WEBSITE-URL                                                (# Download a Full Website)
wget http://www.openss7.org/repos/tarballs/strx25-0.9.2.1.tar.bz2                                (# download a single file)
wget -O taglist.zip http://www.vim.org/scripts/download_script.php?src_id=7701        (# download a file and save it as taglist.zip)
wget -c http://www.openss7.org/repos/tarballs/strx25-0.9.2.1.tar.bz2                        (# continue the incomplete download)
wget -b http://www.openss7.org/repos/tarballs/strx25-0.9.2.1.tar.bz2 # download in the background, Output goes to `wget-log'
tail -f wget-log                                                                                # You can always check the status of the download using tail -f
# Some websites can disallow you to download its page by identifying that the user agent is not a browser. So you can mask the user agent by using –user-agent options 
wget --user-agent="Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.3) Gecko/2008092416 Firefox/3.0.3" URL-TO-DOWNLOAD 
wget --spider DOWNLOAD-URL                                                                                # Test Download URL )
wget --tries=75 DOWNLOAD-URL                                                                        # Increase Total Number of Retry Attempts)
wget -i download.txt                                                                                        # Download Multiple Files / URLs, add URLS in download.txt)
wget --reject=gif WEBSITE-TO-BE-DOWNLOADED                                                # Reject Certain File Types while Downloading)
wget -o download.log DOWNLOAD-URL                                                                # Log messages to a log file instead of stderr)
wget -Q5m -i FILE-WHICH-HAS-URLS                                                                # Quit Downloading When it Exceeds Certain Size)
wget -r -A.pdf http://url-to-webpage-with-pdfs/                                # Download Only Certain File Types Using wget -r -A)
wget ftp-url                                                                                                        # FTP Download With wget)
wget --ftp-user=USERNAME --ftp-password=PASSWORD DOWNLOAD-URL
wget --random-wait -r -p -e robots=off -U mozilla http://www.example.com                # download entire website


$xmllint                                                                         # commonly used tools that can be used to interact with the REST API and with vCenters

rsync [OPTION]... SRC [SRC]... DEST
rsync -av -e 'ssh -p PORT-NUMBER-HERE' /path/to/source user@host
rsync -av -e 'ssh -p 5000' /home/vivek user@host

`If SSH on the remote host is listening on a port other than the default 22 then you can specify the port using the -e argument:`
rsync -a /opt/media/ remote_user@remote_host_or_ip:/opt/media/        


${Encryption/Decryption}
gpg 
$ccrypt
$zip
$pdfttk                                (only for manageing PDF files)
$qpdf 
$xpdf-utils
$7zip
openssl

${NTP server}
$ntpq                                                (# utility to manage NTP server and client)
$ntpq> help                                        (# to get help on commands)
$ntpq -p/-pq                                        (# )
$ntpstat                                                (# The ntpstat command will report the synchronisation state of the NTP daemon running on the local machine)

${Compress/ZIP}
$7-zip
$7za a -tzip -p -mem=AES256 tecmint.zip tecmint.txt tecmint1.txt
$7za e tecmint.zip
pdfcrack                                                                        # Utility to recover lost pdf password)
tar -cf <file-name>.tar .                                        # create tar archive for current directory
tar -xf <file-name>.tar                                                # extract tar files for current directory
tar -tf <file-name>.tar                                                # list files in the tar archive
tar -czf file-name.tar.gz .                                        # create tar and zip archive of current directory
tar -tf file-name.tar.gz                                                # list files in zip archive
tar -xf file-name.tar.gz .                                        # extrax zip archive into current directory
`
        c- create
        v- verbose
        z- zip folder
        f- files
        x- extract
`

${Debug commands}
cat /proc                                        # many hardware related information
strace
fuser
od
file
objdump
$sar -b 1 3
$iostat
$mpstat
$vmstat
$pmap
ss

${Create Linux repository}
$createrepo                                                 (CentOS/RHEL)

${NET command}
$net share
$net server
$net user

${SELinux}
$getenforce                                                # To check the status of SELinux, the results should be disabled, Permissive, Enforcing
$seStatus                                                # To check the status of SELinux, the results should be disabled, Permissive, Enforcing

${Hardware}
$ cat /proc/cpuinfo                         # Get CPU information
$ lsmod                                                 # /proc/modules, showing what kernel modules are currently loaded 
$ cat /proc                                                 # many hardware related information


${Manipulating String http://tldp.org/LDP/abs/html/string-manipulation.html}
stringZ=abcABC123ABCabc
expr length $myString
echo ${#stringZ}                 # 15
echo `expr length $stringZ`      # 15
echo `expr "$stringZ" : '.*'`    # 15

Index expr match "$string" '$substring' # Numerical position in $string of first character in $substring that matches.
echo `expr match "$stringZ" 'abc[A-Z]*.2'`
echo `expr "$stringZ" : 'abc[A-Z]*.2'`

expr index $string $substring
echo `expr index "$stringZ" C12`
echo `expr index "$stringZ" 1c` 

Substring Extraction ${string:position} # Extracts substring from $string at $position.
echo ${stringZ:0}                            # abcABC123ABCabc
echo ${stringZ:1}                            # bcABC123ABCabc
echo ${stringZ:7}                            # 23ABCabc
echo ${stringZ:7:3}                          # 23A

# Is it possible to index from the right end of the string?
echo ${stringZ:-4}                           # abcABC123ABCabc
echo ${stringZ:(-4)}                         # Cabc 
echo ${stringZ: -4}                          # Cabc

expr substr $string $position $length # Extracts $length characters from $string starting at $position.
echo `expr substr $stringZ 1 2`              # ab
echo `expr substr $stringZ 4 3`              # ABC

expr match "$string" '\($substring\)' # Extracts $substring at beginning of $string, where $substring is a regular expression.
echo `expr match "$stringZ" '\(.[b-c]*[A-Z]..[0-9]\)'`   # abcABC1
echo `expr "$stringZ" : '\(.[b-c]*[A-Z]..[0-9]\)'`       # abcABC1
echo `expr "$stringZ" : '\(.......\)'`                   # abcABC1

expr "$string" : '.*\($substring\)' # Extracts $substring at end of $string, where $substring is a regular expression.
echo `expr match "$stringZ" '.*\([A-C][A-C][A-C][a-c]*\)'`    # ABCabc
echo `expr "$stringZ" : '.*\(......\)'`                       # ABCabc


${Internet Connection Testing}
ping -q -w1 -c1 google.com &>/dev/null && echo online || echo offline
ping -q -w 1 -c 1 www.google.com > /dev/null && echo ok || echo error
wget -q --spider http://google.com
ping 8.8.8.8                                                                 # Check if ICMP is open for google free DNS server
ping 8.8.4.4
$telnet 8.8.8.8 53                                                        # Check if ICMP block but public DNS is open on port 53
traceroute 8.8.8.8                                                        # trace route of google DNS server
$ethtool eth0                                                                # Check NIC is alive and connected

dig +short myip.opendns.com @resolver1.opendns.com        # Use dig command for determining my public IP address
dig TXT +short o-o.myaddr.l.google.com @ns1.google.com
ssh admin@192.168.1.254

wget http://ipecho.net/plain -O - -q ; echo                # Check my public IP address
curl ipecho.net/plain; echo
curl icanhazip.com
curl ifconfig.me

nmap --traceroute --script traceroute-geolocation <IP or host> # locate a geo location 

${Free Internet DNS}
https://www.lifewire.com/free-and-public-dns-servers-2626062
Quad9: 9.9.9.9        & 149.112.112.112                        # Quad9 free DNS server

OpenDNS: 208.67.222.222 & 208.67.220.220        # Company offers DNS servers that block adult content, called OpenDNS FamilyShield:
        
Cloudflare: 1.1.1.1 & 1.0.0.1  # fastest DNS service in the world, never log your IP address, sell data, and use to target ads. 

CleanBrowsing: 185.228.168.9 & 185.228.169.9 # has three free public DNS server options: a security filter, adult filter, and family filter. 

Verisign: 64.6.64.6 & 64.6.65.6

Alternate DNS: 198.101.242.72 & 23.253.163.53

${BLOCK/UNBLOCK Internet Access}
Removing your default gateway should do the trick, youll still be able to reach everything in your subnet, but not outside of it. IIRC this should work, cannot try it atm, replace the IP with your routers IP (in the same subnet):

Example-1
$ route -n|grep "^0.0.0.0"                                # To find your default gateways IP:
$ route del default gw 192.168.1.1                # To block the internet 
$ route add default gw 192.168.1.1                # To unblock the internet

Example-2
You can disable your network interfaces, typing "ifconfig" at the command line will print all of your network interfaces.

$ ifconfig eth0 down                                        # you can bring down an interface like this, where eth0 is the network interface you are disconnecting
$ ifconfig eth0 up                                                # when you are ready to use it again just bring it back up.

One of the easiest things you could do would be to create a firewall rule that blocks traffic to the default gateway. If you have a single default gateway providing internet access, this would prevent them from accessing the outside.

Here is an example that might work if your gateway was 192.168.1.1

$ iptables -A INPUT -s 192.168.1.1/32 -j DROP
$ iptables -A INPUT -d 192.168.1.1/32 -j DROP
$ iptables -A INPUT -s 10.0.0.0/8     -j ACCEPT
$ iptables -A INPUT -d 10.0.0.0/8     -j ACCEPT
$ iptables -A INPUT -s 192.168.0.0/16 -j ACCEPT
$ iptables -A INPUT -d 192.168.0.0/16 -j ACCEPT
$ iptables -A INPUT -s 172.16.0.0/12  -j ACCEPT
$ iptables -A INPUT -d 172.16.0.0/12  -j ACCEPT


${ UNIX/LINUX builtin SQL }
https://spin.atomicobject.com/2019/06/16/unix-cli-relational-database/

join -t , -1 2 -2 1 <(sort -t , -k 2 enrollments.csv) <(sort -t , -k 1 courses.csv)                        # Inner join
join -t , -1 2 -2 1 -a 1 <(sort -t , -k 2 enrollments.csv) <(sort -t , -k 1 courses.csv)        # outer join
join -t , -1 2 -2 1 -v 2 <(sort -t , -k 2 enrollments.csv) <(sort -t , -k 1 courses.csv)        # Exlude matches

Command                SQL analog
-------                -----------------
join                JOIN
awk                        SELECT
grep                WHERE
uniq                SELECT DISTINCT
sum                        SUM()

${Monitoring}

zabbix_server - Zabbix server daemon. zabbix_server is the core daemon of Zabbix software.
$ zabbix_server [-hV] [-c <config-file>] [-n <nodeid>] [-R <option>]

Options
-c, --config <config-file> # Use the alternate config-file instead of the default one. Absolute path should be specified. 
-n, --new-nodeid <nodeid>        # Convert database data to new nodeid. Does not start the server. Run this only once. 
-R, --runtime-control <option>        # Perform administrative functions according to option.

Runtime control options

config_cache_reload                # Reload configuration cache. Ignored if cache is being currently loaded. Default configuration file (unless -c option is specified) will be used to find PID file and signal will be sent to process, listed in PID file. 
-h, --help                                # Display this help and exit. 
-V, --version                        # Output version information and exit.

Files
/etc/zabbix_server.conf                # Default location of Zabbix server configuration file

$ zabbix_agentd [-hpV] [-c <config-file>] [-t <item key>]
$ zabbix_agentd is a daemon for monitoring of various server parameters.
Options
-c, --config <config-file>        #Use the alternate config-file instead of the default one. Absolute path should be specified. 
-p, --print                                        # Print known items and exit. 
-t, --test <item key>                # Test single item and exit. 
-h, --help                                        # Display this help and exit. 
-V, --version                                # Output version information and exit.


/etc/zabbix_agentd.conf                # Default location of Zabbix agent configuration file


}
