{ Linux Everyday CLIF
${File and Edit}	
<space>command 						(# Execute a command without saving it in history )
ls -l (ls -ltr or ll)					(# Permissions, Number of hardlinks, File owner, File group, File size, Modification)
ls -i								(# to get the inodes of each file)
ls -F								(# shows the file type)
ll -hisF							(# interesting result)
ll -hisFa --author	
ll -hisFaX	
Time	
Filename)	
Reset	(# restart the terminal session)
echo "ls -l" | at midnight			(# execute a command at given time)
cat -s -n fileNameHere				(# output a file with line number and eliminate blanks)
zcat <filename>						(# view a zip file, *.gz)
column fileNameHere					(# long out in columns)
Sort	
sort -u								(# sort to unique values)
$ uniq 	# 
nl filename							(# replacement of CAT, eleminate blank lines)
sed -n '20,40p' file_name			(# show a file between line number 20 to 40)
less 								(# view file with scroll, up and down)
source 								(# load changes only in a file)
more 								(# view file with page full view)
$ zmore 	#
$ history 	#
$ vi /root/.bash_history				(# get the history of commands run by root)
$ ls	Option Description 
	-a, --all List all entries including ones that start with a dot 
	-A, --almost-all List all entries excluding . and .. 
	-c Sort files by change time 
	-d, --directory List directory entries 
	-h, --human-readable Show sizes in human readable format (i.e. K, M) 
	-H Same as above only with powers of 1000 instead of 1024 
	-l Show contents in long-listing format 
	-o Long -listing format without group info 
	-r, --reverse Show contents in reverse order 
	-s, --size Print size of each file in blocks 
	-S Sort by file size 
	--sort=WORD Sort contents by a word. (i.e size, version, status) 
	-t Sort by modification time 
	-u Sort by last access time 
	-v Sort by version 
	-1 List one file per line

# How to find date and timestamp against command?
export HISTTIMEFORMAT='%F %T '		(# %F is YY - MM - DD, %T is H:M:S)
export HISTIGNORE='ls -l:pwd:date:' 	(# fiter out by ignoring history of ls commands)
unset export HISTCONTROL				(# Unset export command)
.bash_profile						(# to setup a behavior or scripts for user)
.bash_logout	
vi ~/.bash_history					(# complete history of every command)
history -c	 						(# delete history)
Sar	
chkconfig --list	
sysctl -a	 						(# Display kernel parameters)
diff server1.list server2.list | less			(# Comparison of two files in less)
which <files_Name>	 
uname -a	 
cat /etc/redhat-release	
Locale	 

${GREP}

OR Operation (|) - “subexpression1|subexpression2” 	matches either subexpression1 or subexpression2.
[:digit:]	 			Only the digits 0 to 9
[:alnum:] 				Any alphanumeric character 0 to 9 OR A to Z or a to z.
[:alpha:] 				Any alpha character A to Z or a to z.
[:blank:] 				Space and TAB characters only.
grep -e "ntpd\[[[:digit:]]\+\]" /var/log/messages.4	
M to N occurences ({m,n}) - 	indicates that the preceding item is matched at least m times, but not more than n times. 
grep  "^[0-9]\{1,5\}$" number	
Exact M occurence ({m}) - 	A Regular expression followed by {m} matches exactly m occurences of the preceding expression.
grep  "^[0-9]\{5\}$" number	
M or more occurences ({m,}) 	- A Regular expression followed by {m,} matches m or more occurences of the preceding expression.
grep "[0-9]\{5,\}" number	
Word boundary (\b) - \b is to match for a word boundary. \b matches any character(s) at the beginning (\bxx) and/or end (xx\b) of a word, thus \bthe\b will find the but not thet, but \bthe will find they.
grep -i "\bthe\b" comments	
Back references (\n) 	- Grouping the expressions for further use is available in grep through back-references. For ex, \([0-9]\)\1 matches two digit number in which both the digits are same number like 11,22,33 etc.
Match the pattern “Object Oriented” 	- match “object oriented” in various formats.
grep "OO\|\([oO]bject\( \|\-\)[oO]riented\)"	
Print the line “vowel singlecharacter samevowel”	
grep "\([aeiou]\).\1" input	


# ------ Main metacharacters ------ 
Characters	Search Match 
\<KEY	Words beginning with ‘KEY’ 
WORD\> 					Words ending with ‘WORD’ 
^ 						Beginning of a line 
$ 						End of a line 
[ Range ] 				Range of ASCII characters enclosed 
[^c ] 					Not the character ‘c’ 
\[ 						Interpret character ‘[‘ literally 
“ca*t” 					Strings containing ‘c’ followed by no 'a' or any number of the letter 'a' followed by a 't' 
“.” 					Match any single character

# ----- Extended regex -----
The main eregex’s are: +,?,() and |

# ------ List of main eregex ------ 
Characters 		Search Match 
"A1|A2|A3" 		Strings containing ‘A1’ or ‘A2’ or ‘A3’ 
"ca+t" 			Strings containing a 'ca'  followed by  any number of the letter 'a' followed by a 't' 
"ca?t" 			Strings containing ‘c’ followed by no 'a' or exactly one 'a' followed by a 't'

grep 	Main Options 
-c 		count the number of lines matching PATTERN 
-f 		obtain PATTERN from a file 
-i 		ignore case sensitivity 
-n 		Include the line number of matching lines 
-v 		output all lines except those containing PATTERN 
-w 		Select lines only if the pattern matches a whole word.
-o		Print only what you matched
-P		Use Perl-style regular expressions
-E 		tells, that you want to use extended regex
-r 		grep is looking for result recursively in the folder

grep  -v "^#\|^'\|^\/\/" comments	# search line not start with # or ' or //  
grep --color -(i)gnore_case -(r)ecursively -(w)ord_match -(c)ount_lines -(n)umber_of_line -in(v)ert -(l)ist_file_name_only "string_to_search" <in_which_folder>
grep "Linux" input.txt output.txt 				(# search string in more files)
grep -i -r --color "RC4" /etc/httpd				(# find RC4 string on any file under httpd direcotry)
grep --color "RC4" /etc/httpd					(# it will search a specific word and color out it in the output)
grep "Options" /etc/httpd/conf/httpd.conf		(# it will search for word options in httpd.conf file)
grep "Options" /etc/httpd/conf/httpd.conf | grep '\-Include'	
grep -w 'space_left_action' /etc/audit/auditd.conf | grep -v "email"	(# exactly match the word)
grep 'paul' /etc/motd | grep 'franc,ois'		(# finds all lines that contain both `paul' AND `franc,ois')
grep 'pattern1\|pattern2' filename				(# Using OR operator | to mach either of to strings)
grep -E 'pattern1|pattern2' filename	
grep -e pattern1 -e pattern2 filename	
grep -E 'pattern1.*pattern2' filename			(# There is no AND operator in grep. But, you can simulate AND using grep -E option.)
grep -E 'pattern1.*pattern2|pattern2.*pattern1' filename	
grep -v 'pattern1' filename						(# Using grep -v you can simulate the NOT conditions. -v option is for invert match)
grep -e rmdir -e unlink -e 'unlinkat' -e rename -e renameat /etc/audit/audit.rules	 # using AND operation with -e 
grep '^PASS_MIN_LEN' /etc/login.defs			(# will match exact string nothing in the begning, just to avoid commented lines with similar string)
grep "^log_file" /etc/audit/auditd.conf|sed 's/^[^/]*//; s/[^/]*$//'| xargs stat -c %a:%n | cut -c1-3 # Cut first 3 characters from output	
grep 'v1\|v2c\|com2sec' /etc/snmp/snmpd.conf | grep -v '^#'			(# match and find multiple strings in a file and exclude commented lines)
grep -oP '^[^#]*NOPASSWD' /etc/sudoers			# exclude # at front of string and search for NOPASSWD
grep -o '\<pam_faillock.so preauth silent' /etc/pam.d/system-auth		# only capture string starting from pam_faillock.so upto silent
grep 'auth'  /etc/pam.d/system-auth | grep -oP 'requisite\K.*(?=quiet)'			# print string between 'requisite' and 'quiet'
grep 'auth'  /etc/pam.d/system-auth | grep -oP 'requisite\K.*(?=)'				# print string between 'requisite' upto end
grep 'auth'  /etc/pam.d/system-auth | awk -v FS="(requisite|quiet)" '{print $2}'	 # print string between 'requisite' and 'quiet'
grep -o  '\ V-.....\ ' Scan-CAT-1.log					# match a format of V-12345
grep '\ V-' Scan-CAT-1.log | cut -b-8 | wc -l			# match V- and take first 8
grep '\<V-' Scan-CAT-1.log | cut -b-8 | wc -l			# match V- and take first 8
grep -io "Chrome" /root/test.txt	
grep -io "Chrome" /root/test.txt | wc -l	
grep -o --color '\-p wa'						# to extract word and color it
grep -o --color '\-p wa' | wc -l				# to extract exact word, color it and show number of time its appearance


# ---------- Find and replace a string in a file--------------- (http://unix.stackexchange.com/questions/112023/how-can-i-replace-a-string-in-a-files)
grep -rl string1 /somedir/fileName | xargs sed -i 's/string1/string2/g'
grep -rl 'Options' /usr/tideway/stig.log | xargs sed -i 's/Options/NoOptions/g' (# find string Options in a file stig.log, replace it with NoOptions)
zgrep
shopt -s nocasematch			(# turn on the case matching)
shopt -u nocasematch			(# turn off the case matching)

# The egrep tool supports extended regular expressions eregex, The egrep utility will handle any modern regular expressions.\ 
# It can also search for several keywords if they are entered at the command line, separated by the vertical bar character. 
egrep 'Manager|Developer' employee.txt | grep -v Sales (# You can also combine NOT with other operator to get some powerful combinations)
egrep -n "*" <file_name> | egrep "line_number"
egrep 'pattern1|pattern2' filename
egrep 'linux|^image'   /etc/lilo.conf
egrep  '\b(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)' input		# Valid IP address

# fgrep stands for fast grep and fgrep interprets strings literally (no regex or eregex support). The fgrep utility does not recognise the special meaning of the regular expressions
fgrep 'cat*' FILE
fgrep –f LIST FILE

SERVICE
service --status-all | grep -i httpd	
service --status-all | grep -i httpd | grep 'is running...'	
service --status-all | grep -i ssh | grep 'is running...'	


${FIND}
find <directory> <files_Name>
find / | grep "somestring"
find / -name somestring
find /usr/tideway/stig.log -type f -exec sed -i 's/NoOptions/NewOptions/g' {} \;
find . -type f -exec sed -i 's/foo/bar/g' {} +	(# replace string in regular files (including hidden ones) in this and all subdirectories)

${CUT, HEAD, TAIL on string}
someString='ABC123 XYZ:987 abc111 xyz222'
echo $someString | cut -c1-3			# output the string and take character from 1 to 3, output: ABC
echo $someString | cut -c8-13		# output the string and take character from 8 to 13, output: XYZ987
echo $someString | cut -d':' -f2		# it will cut the string from colon and show rest of the string
echo $someString | cut -d "=" -f2	# cut string after equal sign
echo $someString | head -c3			# output the string and take character upto 3, output: ABC
echo $someString | tail -c5			# output a string from tail take character upto 5, output: z222
head -n <no. of lines>				(# view file with defined number of lines from top of file)
tail -n <no. of lines>				(# view file with defined number of line from bottom of a file)
tail -n +3
tail -n -1							(# capture last line)						
head -n 20 file_name | tail -n 10	(# get first 20 lines and then take its 10 bottom) 

${AWK}
# $1 is field #1, $2 is field #2, etc.
echo one two | awk '{print $1}'		# one
echo one two | awk '{print $2}'		# two
echo one two | awk '{print $0}'		# one two, All the fields!
awk '{print $3}' $filename			# Prints field #3 of file $filename to stdout.
awk '{print $1 $5 $6}' $filename	# Prints fields #1, #5, and #6 of file $filename.
awk '{print $0}' $filename			# Prints the entire file!
awk '{print substr($0,1,3);exit}'	# Using substring, match first 3 characters
awk '{print $1 $1 "1"}'				# Print output from column 1 and ends with :
awk 'FNR>=20 && FNR<=40' file_name	# open a file and only show lines between 20 to 40
awk 'NR==2'							# only show line no.2 out of whatever number of lines
awk -F'package:' '{print $2}'		# find package: and after print 2nd column result
 

${SED - The Stream Editor}
# sed performs automatic, non-interactive editing of files. It is often used in scripts to search and replace patterns in text. It supports most regular expressions. 
sed -n '/xzy/p' $filename				# The -n option tells sed to print only those lines matching the pattern. Otherwise all input lines would print.
sed -e '/^$/d' $filename				# The -e option causes the next string to be interpreted as an editing instruction.
sed 's/^package://'						# cut the string from package: and show rest of the string
sed '5!d' file							# only show line no.5 out of whatever number of lines
sed -n 2p								# only show line no.5 out of whatever number of lines
sed -n 5,10p file						# range of line from 5 to 10
sed -i -- 's/OldString/NewString/g' stig.log	(# it will find a file name stig.log and in it find OldString, replace with NewString)
sed -i '4s/OldString/NewString/g' stig.log		(# Replace foo with bar only on the 4th line)
sed -i -- 's/OldString/NewString/g' *.log		(# replace string in all files ending *.log)
sed -i -- 's/oldString/newString/g' * 			(# replace string all files in this directory only)
sed -i 's/foo\(.*baz\)/bar\1/' file				(# Replace foo with bar only if there is a baz later on the same line)
sed -i 's/NewString/OldString/g; s/LowOptions/Options/g'  file.log	(# replacing multiple lines with different strings)
sed -Ei 's/Options|OldString/foobar/g'  stig.log	(# replace multiple strings with foobar)
(# If you have a large number of patterns, it is easier to save your patterns and their replacements in a sed script file:)
#! /usr/bin/sed -f
s/foo/bar/g
s/baz/zab/g
(# Or, if you have too many pattern pairs for the above to be feasible, you can read pattern pairs from a file (two space separated patterns, $pattern and $replacement, per line):
while read -r pattern replacement; do   
    sed -i "s/$pattern/$replacement/" file
done < patterns.txt
(# That will be quite slow for long lists of patterns and large data files so you might want to read the patterns and create a sed script from them instead. The following assumes a <space> delimiter separates a list of MATCH<space>REPLACE pairs occurring one-per-line in the file patterns.txt :)
sed 's| *\([^ ]*\) *\([^ ]*\).*|s/\1/\2/g|' <patterns.txt | sed -f- ./editfile >outfile

${PERL}
perl -i -pe 's/foo/bar/g; s/baz/zab/g; s/Alice/Joan/g' file
perl -i -pe 's/foo|bar|baz/foobar/g' file		(# replace multiple strings with foobar)

${Pattern Matching}
Here is a table of regular expression operators and their effect :
Operator	Effect
.		Matches any single character.
?		The preceding item is optional and will be matched, at most, once.
*		The preceding item will be matched zero or more times.
+		The preceding item will be matched one or more times.
{N}		The preceding item is matched exactly N times.
{N,}	The preceding item is matched N or more times.
{N,M}	The preceding item is matched at least N times, but not more than M times.
-		represents the range if its not first or last in a list or the ending point of a range in a list.
^		Matches the empty string at the beginning of a line; also represents the characters not in the range of a list.
$		Matches the empty string at the end of a line.
\b		Matches the empty string at the edge of a word.
\B		Matches the empty string provided its not at the edge of a word.
\<		Match the empty string at the beginning of word.
\>		Match the empty string at the end of word.

--- Table C-1. Basic SED operators ---
Operator								Name		Effect
[address-range]/p						print		Print [specified address range]
[address-range]/d						delete		Delete [specified address range]
s/pattern1/pattern2/					substitute	Substitute pattern2 for first instance of pattern1 in a line
[address-range]/s/pattern1/pattern2/	substitute	Substitute pattern2 for first instance of pattern1 in a line, over address-range
[address-range]/y/pattern1/pattern2/	transform	replace any character in pattern1 with the corresponding character in pattern2, over address-range (equivalent of tr)
[address] i pattern Filename			insert		Insert pattern at address indicated in file Filename. Usually used with -i in-place option.
g										global		Operate on every pattern match within each matched line of input

--- Table C-2. Examples of SED operators ---
Notation				Effect
8d						Delete 8th line of input.
/^$/d					Delete all blank lines.
1,/^$/d					Delete from beginning of input up to, and including first blank line.
/Jones/p				Print only lines containing "Jones" (with -n option).
s/Windows/Linux/		Substitute "Linux" for first instance of "Windows" found in each input line.
s/BSOD/stability/g		Substitute "stability" for every instance of "BSOD" found in each input line.
s/ *$//					Delete all spaces at the end of every line.
s/00*/0/g				Compress all consecutive sequences of zeroes into a single zero.
echo "Working on it." | sed -e '1i How far are you along?'	Prints "How far are you along?" as first line, "Working on it" as second.
5i 'Linux is great.' file.txt	Inserts 'Linux is great.' at line 5 of the file file.txt.
/GUI/d					Delete all lines containing "GUI".
s/GUI//g				Delete all instances of "GUI", leaving the remainder of each line intact.

${Exit Code}
$?


${Installation and Package management}
rpm -ga 										(# get all installed packages)
rpm -qa --last									(# get all the installed packages on RHLE)
rpm -q --changelog {package-name}
rpm -q --changelog {package-name} | more
rpm -q --changelog {package-name} | grep CVE-NUMBER
rpm -q --changelog perl|grep CVE-2008-1927
rpm -q --changelog * | grep CVE*
rpm -ivh {package-name}							(# install a package)
rpm -Uvh {package-name} 						(# to upgrade a given package)
rpm -evv {package-name}							(# remove/erase RPM package)
rpm -qf /usr/bin/htpasswd						(# Find this file belongs to which package)
rpm -qi {package-name}							(# query an information of installed RPM package)
rpm -qip {package-name}							(# query information of package before installing)
rpm -qdf [package-name]							(# list available package documentation)
rpm -Vp {package-name}							(# to verify rpm package)
rpm -Va											(# to verify all RPM packages)
rpm -q gpg-pubkey								(# to ensure gpg keys are installed)
rpm -qpR {.rpm}									(# find what dependencies rpm package has)
rpm -qR {package}								(# find what dependencies rpm package has)
rpm --checksig {package}						(# This command checks the PGP signature of specified package to ensure its integrity and origin)
How To rebuild Corrupted RPM Database

${Networking}
nmap -p 80 192.168.1.1                           (Scan port 80)
nmap -p T:80 192.168.1.1                         (Scan TCP port 80)
nmap -p U:53 192.168.1.1                         (Scan UDP port 53)
nmap -sU -p <port> <IP address / host>			 (Scan UDP port)
nmap -sT -p <port> <IP address / host>
nmap 192.168.1.1-20
nmap 192.168.1.*
nmap 192.168.1.0/24
nmap -A <IP address> or -v -A <IP>				 (In-depth details of host by turning on OS and version detection scanning)
nmap -sA <IP address>							  (Find out if a host/network is protected by a firewall)
nmap -PN <IP address> 							 (Scan a host when protected by the firewall, show all available ports)
nmap --reason <IP>								  (Display the reason a port is in a particular state)
nmap --open <IP>								  (Only show open (or possibly open) ports)
nmap --packet-trace <IP>						 (Show all packets sent and received)
nmap --iflist <IP>								 (Show host interfaces and routes)
nmap -v -O --osscan-guess <IP>					 (How do I detect remote operating system?)
nmap -sV <IP>									 (How to detect remote services version numbers)
nmap -PA <IP>	or -PS or -PO or -PU			 (firewall is blocking standard ICMP pings, Scan a host using TCP ACK (PA) and TCP Syn (PS) ping)
nmap -sU <IP>									 (Scan a host for UDP services (UDP scan))
nmap -sO <IP>									 (Scan for IP protocol, determine which IP protocols (TCP, ICMP, IGMP, etc.) are supported by target)
nmap -sN <IP> or -sF or -sX					 (Scan a firewall for a security weekness)

${Network Connections}
netstat -tulpn | grep 80							(check applications listening on port 80)
netstat -n --inet									(check the privileged ports status)
ss 												(socket statistics and communication connections)
ss -t
ss -a -A udp
ss -ltn
watch
Nload, iftop, iptraf, nethogs, bmon, slurm, tcptrack, Vnstat, cbm, speedometer, Pktstat, Netwatch, Trafshow,Netload, ifstat(Network bandwidth monitor)
tcpdump -i eth0 | grep ssh 						(Network bandwidth and traffic monitor)

${Firewall}
iptables --line-numbers -n -L
iptables -L -n -v | grep 25032
chkconfig iptables on
service iptables start

${Disk}
partprobe /dev/sdb
fdisk -l /dev/sdc
kpartx
mkfs -t ext4 /dev/sdc1
mkswap /dev/sdd1
swapon -va /dev/sdd1
patx -a /dev/sdd
partprobe -s
mount
mount -t cifs //pcifs01/AssocAccessPortalFolder$/am028787/Downloads /usr/tideway/tmp
mount -t cifs -o username=****,password=***** //pcifs01/AssocAccessPortalFolder$/am028787/Downloads /usr/tideway/tmp

dd
dd if=/dev/sda of=/tmp/mbrsda.bak bs=512 count=1 	(# copy MBR from /dev/sda to mbrsda.bak file)
dd if=/tmp/mbrsda.bak of=/dev/sdb bs=446 count=1 	(# restore MBR to /dev/sdb)
du -hs logs/
du -h /usr/tideway | sort -n -r | head -n 10F
du -ah /usr , du -ah /mnt/addm/db_data 				(# folder size used)
df -h /usr , df -h /mnt/addm/db_data  				(# folder size total)
tune2fs -l /dev/sda1 								(# gives raw information on disk)
badblocks -v /dev/sdb1
fsck
lsblk
blkid
sfdisk -l
cfdisk
parted

ls -ltr | sort -n -k 5
ps auxw
ps auxw | grep model/main.py
ps -e -o pid,args --forest
pstree
md5sum file_name	(use the “ md5sum -c” option to check against a given file (often with a “.asc” extention) to check whether the various files are correct)

${Permission, ownership}
chown tideway:tideway etc
chmod 750 etc
chown tideway:tideway twcfg.txt twpol.txt
chmod 640 twcfg.txt twpol.txt
getfacl				(# itemize the output by permission, owner etc)
getfacl /etc/passwd
stat /etc/passwd	(# show detials of every possible settings on a file)

alias (~/.bashrc file for root, unhide this file by command ls -a in ~ folder, http://www.cyberciti.biz/tips/bash-aliases-mac-centos-linux-unix.html)
alias cls='echo -e "\033c"'
alias cls='printf "\033c"'
unalias aliasname 						(# to remove the alias from ~/bashrc)

${Processor Information is incorrect}
cat /proc/cpuinfo
lscpu 
grep -C processor /proc/cpuinfo 
psrinfo -v 								(# Solaris from /proc/cpuinfo)
dmidecode 

${login information}
check login history (/var/log/wtmp and /var/log/lastlog file to save login history)
last | more
last | head -10 							(#check last 10 logs)
last <user name> 						(#check particular user)
lastlog | grep Never | awk '{print $1}' 	(#To generate a list of all the accounts that have never been logged into, use a command like this)
od -xc /var/log/lastlog | more 		(#check last login sessions)
lastlog -b 30 (/var/log/lastlog)

w -uhu 							(#get running processes of logged in user)
who 							(#get user and processes of logged in user )
users 							(#currently logged in user)
whoami 							(#get named you are logged in)
who am i 						(#get name you logged in with details)
ls /home/ 						(#it will give manually created users directories)

${Create an account}
useradd -m -G tideway -s /bin/bash <NEWUSER>
passwd <NEWUSER> 					(#give temporary password)
usermod -L <NEWUSER> 				(#lock out user for next login)
chage -d 0 <NewUser> 				(#To force user to change password at first time login)
usermod -U <NEWUSER>				(#unlock user account)
chage -l <UserName>					(# check the user aging information, such as expire date, time etc)
chage -I -1 -m 0 -M 99999 -E -1 username
userdel -r username					(# delete user and his home directory)
deluser –remove-all-files username	(# Delete user account & his home directory, personal files located in different locations which you are not aware.)
deluser –backup-to DIR username		(# Delete user account and take backup of his files to a directory for future use by the company)
deluser –backup-to /var/backup don	(# I want to delete user account Don and take backup of all his files to /var/backup)
grep somestring /etc/group
grep somestring /etc/shadow
grep somestring /etc/gshadow
grep somestring /etc/passwd
awk -F':' '{ print $1}' /etc/passwd | column 	(# List all user accounts in the system)

${SSH access}
add following to file /etc/ssh/sshd_config (giving root a SSH access)
PermitRootLogin yes
AllowUsers root

${Audit Linux files}
(auditctl) 			(# a command to assist controlling the kernel’s audit system. You can get status, and add or delete rules into kernel audit system. Setting a watch on a file is accomplished using this command)
(ausearch) 			(# a command that can query the audit daemon logs based for events based on different search criteria)
(aureport)			(# a tool that produces summary reports of the audit system logs)
auditd				(# RHLE built-in audit service, 
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
	auditctl -l | grep syscall | grep mount			(#to check file mount enabled or disable)
	auditctl -l | grep syscall | grep -w unlink		(#to check file deletion enabled)
	auditctl -l | grep syscall | grep -w unlink		(#to check renaming the files)
	auditctl -l | grep "watch=/etc/sudoers"			(#to check audit is configure for system adminitrator actions)
		-w /etc/sudoers -p wa -k actions add to /etc/audit/audit.rules
	auditctl -l | grep syscall | grep init_module	(#to check loading and unloading module activities)
	grep active /etc/audisp/plugins.d/syslog.conf, If the "active" setting is missing or set to "no", then set it to yes. (forward logs to syslog service)
	/etc/grub.conf		If they include "audit=1", then auditing is enabled at boot time
		kernel /vmlinuz-version ro vga=ext root=/dev/VolGroup00/LogVol00 rhgb quiet audit=1

# Common Linux log files names and usage

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
./tripwire-check 					(#check what files are changed on ADDM appliance through tripwire /usr/tideway/tripwire/etc)
./twadmin	(--print-profile)
./tripwire
./siggen
./twprint   (./twprint -m r|--print-report -twrfile /usr/tideway/var/tripwire/report/ADDMCONCRTLS01-20160218-205502.twr > /usr/tideway/tripwire)
./tripwire-setup-keyfiles

${MAIL}
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

echo "Test mail from addmCONcrtLS01" mail -s "Test mail" aamir.mukhtar@example.com

${Rooting Linux}
Each process/command on Linux and Unix-like system has current working directory called root directory of a process/command. You can change the root directory of a command using chroot command, which ends up changing the root directory for both current running process and its children.

chroot

${Editors}
vi								(# command mode, insert mode)
	:set number					(# set line numbers)
	:set fileformat=unix 		(# file is non unix, run this if get error M^)
	:w
	:q or q!
	:dd			(delete lines) - e.g., 2dd delete 2 lines
	:D			(delete single line)
	:dw			(delete a word)
	:x			(delete a character)
	:i			(insert)
	:a			(append)
	:u			(undo)
	:/<search word> case sensitive
	:zz			(save file and quit)
	:split		(multiple files and screens)
nano
^g or ^G		(help)


${OpenSSL and Httpd}
openssl ciphers $ {cipherspec} 								(# will give all the Ciphers could run on the server)
openssl ciphers $ {cipherspec} | sed 's/:/\n/g' | grep CBC  	(# Give a list of all Ciphers being used by CBC)
grep -i -r "RC4" /etc/httpd  								(# gives all RC4 related or CBC)
grep -i -r "CBC" /etc/httpd  								(# gives all CBC related strings)
openssl ciphers -V  											(# to check all the available ciphers in openssl)
openssl s_client -crlf -connect addmCONcrtLS01:443 			(# Test HTTPS encryption and certificates chain, supported protocol)
openssl ciphers -v | column -t | grep ECDHE-RSA-AES128-GCM-SHA256
openssl s_client -connect addmCONcrtLS01:443 -tls1 			(# to find out if system supports TLS1, for other check use “-tls1_1 or -tls1_2”)
nmap --script ssl-enum-ciphers -p 443 addmCONcrtLS01  		(# Check and give the list of all supported ciphers)
netstat -tpan | grep 443 										(# to check if server is listening at port 443)

httpd -v													(# to check the apache version)
httpd2 -v													(# to check the version of the apache
httpd –M 													(# To get the apache loaded modules)

${Apache TOMCAT}
TomCat cd /usr/local/tomcat/bin/
./version.sh												(# show the tomcat version)
./shutdown.sh
tomcat/lib/log4j.properties									(# Setting up the log level error messages)
$CATALINA_HOME/bin/catalina.sh start -security				(# Once you have configured the catalina.policy file for use with a SecurityManager, Tomcat can be started with a SecurityManager in place by using the "-security" option:)
http://wiki.apache.org/tomcat/FAQ/Miscellaneous#Q6
http://tomcat.apache.org/tomcat-5.5-doc/security-manager-howto.html
http://tomcat.apache.org/tomcat-5.5-doc/logging.html
https://www.owasp.org/index.php/Securing_tomcat

./java -version												(# log to the Java installed directory, if Java environment variables not set)
java -version
java -XshowSettings:properties -version
javac -version
rpm -qa | egrep -i "(jdk|jre)"							
./version.sh												(# Apache Tomcat version under /usr/local/tomcat/bin)
cat RELEASE-NOTES | grep "Apache Tomcat Version"				(# Apache Tomcat version under /usr/local/tomcat)
/etc/init.d/tomcat version									(# If Tomcat is installed as a service)

openSSL version											(# to check the open SSL version)
openSSL ciphers -v 										(# to find out the supported and available ciphers)
echo -n | openssl s_client -connect www.google.com:443 	(# To check a website using cipher suite)
whereis httpd											(# which files httpd process is expected)
 /usr/sbin/httpd -V										(# which files the process will use)

 openssl s_client -showcerts -connect server:443 > cacert.pem
 openssl x509 -inform der -in certificate.cer -out certificate.pem
 openssl x509 -in server.crt -out server.pem -outform PEM (/usr/tideway/etc/https/server.crt, /etc/httpd/conf/ssl.crt/server.crt, /etc/httpd/conf/ssl.crt/server.pem)
 When openssl is not available on your system you could alternatively convert certificates with the java keytool.
openssl enc -aes-256-cbc -in tecmint.txt -out tecmint.dat
openssl enc -aes-256-cbc -d -in tecmint.dat > tecmint1.txt

 ${Single User Mode}
 sulogin
 sushell
 
 ${BusyBOX commonly used Linux commands in one package}
 Usage: busybox [function] [arguments]...
 
 
 ${screen}
 screen							(# to start a screen)
 screen -S <screen name>		(# to create a screen with name)
 screen -Sdm <scr name>			(# create a screen for later use)
 screen -ls						(# list number of screens)
 screen -d						(# detach a screen)
 screen -r <Screen ID>			(# attach a screen)
 Ctrl+a							(# switch between sessions only if have 2 or more sessions)
 Ctrl+shift+A and n				(# Switch between multiple screens)
 Ctrl+shift+A and p				(# Switch between previous screens)
 Ctrl+shift+A and x				(# Lockout the screen)
 Ctrl+shift+A and d				(# detach a screen or exit to finish session)
 Ctrl+shift+A and K				(# to kill the screen)
 press Ctrl+a, shift+?			(# press Ctrl+A and release and then press Shift+?,  to get screen commands help)
 Ctrl+a and ""					(# show number of screens)
 Ctrl+a TAB						(# switch to split windows)
 Ctrl+a Shift+s					(# Split to more screens)	[hit Alt+c to get a new bash prompt]
 Ctrl+a Shift+x					(# to end opened bash terminal)
 screen -X -S TODO quit 		(# quit the screen session)
 
password lock screen: you can edit “$HOME/.screenrc” file. If the file doesn’t exist, you can create it manually and add a line password crpt_password, use mkpassword for cryptsetup
screen reads the /etc/screenrc and ~/.screenrc (Customize the screen)

${Create account with ROOT prilileges}
useradd -ou 0 -g 0 <UserName>
passwd <UserName>
You won't be able to delete second root user with another UID 0 using userdel command. To delete user john with UID 0, open /etc/passwd file and change john's UID to something else, shown below.
<UserName>:x:0:0::/home/john:/bin/sh	to	<UserName>:x:1111:0::/home/john:/bin/sh
userdel <UserName>
Another method below
adduser -ou 0 -g 0 -G root -s /bin/bash -r srv_nexpose -p nexpose

${tput - screen control and color}
tput clear							# clear the screen
tput cup 3 15						# Move cursor to screen location X,Y (top left is 0,0)
tput rev							# Set reverse video mode
tput bold							# Set bold mode 

${Secure Access}
scp				(# secure copy, remote file copy program)
scp -r user@hostserver.com:/home/user/data_files/ /opt/backup/		(Backup files)
ssh					(# remote shell login)
ssh-add				(#adds private key identity to the authentication agent)
ssh-keysign			(# ssh helper program for host-based authentication)
ssh-keyscan			(# gather ssh public keys)
ssh-keygen			(# authentication key generation, management and conversion)
sshd				(# OpenSSH SSH daemon)
ssh-agent			(# authentication agent)
sftp				(# secure file transfer program)
sftp-server			(# SFTP server subsystem)
rsh					(# remote shell)
rlogin
rexec
rcp
isakmpd			(#ISAKMP/Oakley a.k.a. IKEv1 key management daemon)
openssl			(#OpenSSL command line tool)
openssh 		(#multiplexer for Linux)

${Secure Shell}
ssh user1@server1 command1
ssh user1@server1 'command2'
ssh user1@server1 'command1 | command2'
ssh -p 443 user@ipaddress
ssh userName@host 'echo $HOME'
ssh tideway@addmConCrtLS01 /usr/tideway/bin/tw_checkuser --version		(#remote script run on the remote server)
ssh root@MachineB 'bash -s' < local_script.sh							(#local Script run to the remote server)
ssh user@host  '/scripts/backup.sh'										(#execute remote script)
ssh -t user@hostname 'sudo command'										(#for sodu command)
ssh user@host su -c "/path/to/command1 arg1 arg2"							(#for su command)
ssh user@host su --session-command="/path/to/command1 arg1 arg2"			(#session specific commands)
ssh user@host su --session-command="/sbin/service httpd restart"

ssh user@host << EOF	(read input from the current source (HERE) until a line containing only word (HERE) is seen:runs multiple commands on a remote system:)
 date
 hostname
 cat /etc/resolv.conf
EOF

cat newScript.bash | ssh user@host		(pipe script to remote host)

ssh -f -L {local-port}:localhost:{remote-server-port} user@remote.server.com		(# SSH has feature called port forwarding, also known as tunneling)
ssh -f -L 3001:localhost:3001 user@host

${CURL Commands https://curl.haxx.se/docs/manpage.html}
curl ifconfig.me															(# get your external IP address)
curl ifconfig.me/IP or /host or /port /ua

curl http://addmconcrtls01/ui
curl -k https://addmconcrtls01/ui or curl -insecure https://addmconcrtls01/ui
curl --cacert cacert.pem https://server/ [and the rest]
curl --cacert server.pem https://addmconcrtls01.companyAsp.com:443
curl --cacert server.pem https://addmconcrtls01.companyAsp.com:443/ui/
curl --user name:password http://www.example.com							(# using user name and password)
curl --location http://cerninfsvkc1vc1.companyAsp.com:443					(# Sevrer tell the location of actaul starting page)
curl http://www.centos.org > centos-org.html								(# store out put to a file)
curl -u ftpuser:ftppass -O ftp://ftp_server/public_html/xss.php			(# download a file from FTP)
curl -u ftpuser:ftppass -O ftp://ftp_server/public_html/					(# list all the files under this directory)
curl -u ftpuser:ftppass -T myfile.txt ftp://ftp.testserver.com			(# upload files to FTP server)
curl dict://dict.org/d:bash												(# check defination of bash from dictionary)
curl dict://dict.org/show:db												(# shows database of dictionaries)
curl --mail-from blah@test.com --mail-rcpt foo@test.com smtp://mailserver.com		(# Send email)
curl -v telnet://7.40.2.47:443											(# check active port)
curl -k -v https://7.40.2.47:443/agent/Status							(# Check vCenter agent status)
curl -k -v https://7.40.2.47:443/api/versions							(# check vCenter version)
curl -k -v https://7.40.2.47:443/mob										(# vCenter)
curl -R -O http://www.lua.org/ftp/lua-5.3.3.tar.gz
	tar zxf lua-5.3.3.tar.gz
	cd lua-5.3.3
	make linux test


xmllint 		(commonly used tools that can be used to interact with the REST API and with vCenters)

rsync
rsync -av -e 'ssh -p PORT-NUMBER-HERE' /path/to/source user@host
rsync -av -e 'ssh -p 5000' /home/vivek user@host

${Encryption/Decryption}
gpg 
ccrypt
zip
pdfttk				(only for manageing PDF files)
qpdf 
xpdf-utils

${NTP server}
ntpq						(# utility to manage NTP server and client)
ntpq> help					(# to get help on commands)
ntpq -p/-pq					(# )
ntpstat						(# The ntpstat command will report the synchronisation state of the NTP daemon running on the local machine)

7-zip
7za a -tzip -p -mem=AES256 tecmint.zip tecmint.txt tecmint1.txt
7za e tecmint.zip
pdfcrack					(# Utility to recover lost pdf password)

${Debug commands}
cat /proc					(# many hardware related information)
strace
fuser
od
file
objdump
sar -b 1 3
iostat
mpstat
vmstat
pmap
ss

${Create Linux repository}
createrepo 						(CentOS/RHEL)

${Wget command}
wget --random-wait -r -p -e robots=off -U mozilla http://www.example.com		(download entire website)

${NET command}
net share
net server

${Intrusion Detection and Security}
AIDE - Advance Intrusion Detection Environment 	(# only check files integratity)
HIDS - Host-base Intrusion Detection System 	(# only check files integratity)
Rootkit scanner - rkhunter, chkrootkit
Monitor - logwatch, logcheck
Linux Unified Key Setup-on-disk-format (LUKS) technology (# encrypts the disk)
To encrypt RHEL disk, run following:
	part / --fstype=ext3 --size=100 --onpart=hda1 --encrypted --passphrase=[PASSPHRASE] 

${SELinux}
getenforce								(# To check the status of SELinux, the results should be disabled, Permissive, Enforcing)
seStatus								(# To check the status of SELinux, the results should be disabled, Permissive, Enforcing)

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

}

 

${PowerShell}
ps> get-hotfix
ps> get-aduser username -properties *
ps> get-aduser username -properties *  > get-aduser am028787 -properties *
ps> get-adDomain <domainName>
ps> get-adForest
ps> get-adGroupMember <addmAdmins>
ps> get-help *AD*
ps> test-port -computer <IP> -port <> -tcp
ps> get-wmiObject -Class win32_Bios
ps> get-wmiObject -Class win32_Bios -ComputerName addmcrtkc01.companyAsp.com
ps> get-wmiObject -Class win32_Processor -ComputerName intmdtndb04.companyAsp.com | Out-File c:\scripts\test.txt
ps> net localgroup administrators											(`get the members of administrators group on local machine`)
ps> invoke-command {net localgroup administrators} -comp addmprxprdls02 	(`get the members of administrators group on remote machine`)
ps> invoke-command {
>> net localgroup administrators | 
>> where {$_ -AND $_ -notmatch "command completed successfully"} | 
>> select -skip 4
>> } -computer addmprxprdls02
ps> quser				(to find the last time user logged on)
{ `TO find when was user logged on the machine`
Get-Item "$((Get-Item $env:USERPROFILE).Parent.FullName)\*\NTUSER.DAT" -Force |
    ForEach-Object {
        New-Object psobject -Property @{
            Path = $_.DirectoryName
            ProfileLastModified = $_.LastWriteTime
        }
    }
}

ps> Get-EventLog System -Source Microsoft-Windows-WinLogon -After (Get-Date).AddDays(-5) -ComputerName computername	(logon and logoff history)
ps> Get-EventLog System -Source Microsoft-Windows-WinLogon -Before (Get-Date).AddDays(-5) -ComputerName computername

#Listening Registry Entries (Cmdlets used: New-Item, Get-Item , New-ItemProperty, Set-ItemProperty, Get-ItemProperty)
Get-Item -Path Registry::HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\LanManServer\Parameters | Select-Object -ExpandProperty Property
#Get Item Properties
Get-ItemProperty -Path Registry::HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\LanManServer\Parameters
# Get single registry entry
Get-ItemProperty -Path Registry::HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\LanManServer\Parameters -Name enablesecuritysignature
# Modify value
Set-ItemProperty -Path Registry::HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\LanManServer\Parameters -Name enablesecuritysignature -Value 1

${gwmi}
ps> gwmi win32_bios
ps> gwmi win32_Bios | fl SerialNumber

Account Lockout Status Tool
Source IP|Destination IP|Protocol|Source Port|Destination Port|Direction|Action

gpudate /force				(# Updates multiple Group Policy settings)
AuditPol /get /category:*	(# audit policy tool, open through command prompt)

${Active Directory}
Windows 2012 -> Server Manager -> Add Roles and Features -> Role based or features based installation -> Remote Access -> Remote server Administration Tools -> Role Administration Tools -> AD DS and AD LDS Tools -> Active Directory module for Windows PowerShell


}

{----------------- VM vSphere CLI -----------------------
Install VMware vSphere PowerCLI on Windows PowerShell
http://pubs.vmware.com/vsphere-60/index.jsp#1_2_1_0			(VMWare publications)
Get-VM
Get-VM -Name "Win XP SP2"
Get-Help About_OBN
Add-PassthroughDevice
Add-VMHost
Add-VmHostNtpServer
Apply-DrsRecommendation
Apply-VMHostProfile
Connect-VIServer
Copy-DatastoreItem
Copy-HardDisk
Copy-VMGuestFile
Disconnect-VIServer
Dismount-Tools
Export-VApp
Export-VMHostProfile
Get-Annotation
Get-CDDrive
Get-Cluster
Get-CustomAttribute
Get-Datacenter
Get-Datastore
Get-DrsRecommendation
Get-DrsRule
Get-FloppyDrive
Get-Folder
Get-HardDisk
Get-Inventory
Get-IScsiHbaTarget
Get-Log
Get-LogType
Get-NetworkAdapter
Get-NicTeamingPolicy
Get-OSCustomizationNicMapping
Get-OSCustomizationSpec
Get-PassthroughDevice
Get-PowerCLIConfiguration
Get-PowerCLIVersion
Get-ResourcePool
Get-ScsiLun
Get-ScsiLunPath
Get-Snapshot
Get-Stat
Get-StatInterval
Get-StatType
Get-Task
Get-Template
Get-UsbDevice
Get-VApp
Get-VICredentialStoreItem
Get-VIEvent
Get-View
Get-VIObjectByVIView
Get-VIPermission
Get-VIPrivilege
Get-VIRole
Get-VirtualPortGroup
Get-VirtualSwitch
Get-VM
Get-VMGuest
Get-VMGuestNetworkInterface
Get-VMGuestRoute
Get-VMHost
Get-VMHostAccount
Get-VMHostAdvancedConfiguration
Get-VMHostAvailableTimeZone
Get-VMHostDiagnosticPartition
Get-VMHostFirewallDefaultPolicy
Get-VMHostFirewallException
Get-VMHostFirmware
Get-VMHostHba
Get-VMHostModule
Get-VMHostNetwork
Get-VMHostNetworkAdapter
Get-VMHostNtpServer
Get-VMHostProfile
Get-VMHostService
Get-VMHostSnmp
Get-VMHostStartPolicy
Get-VMHostStorage
Get-VMHostSysLogServer
Get-VMQuestion
Get-VMResourceConfiguration
Get-VMStartPolicy
Import-VApp
Import-VMHostProfile
Install-VMHostPatch
Invoke-VMScript
Mount-Tools
Move-Cluster
Move-Datacenter
Move-Folder
Move-Inventory
Move-ResourcePool
Move-Template
Move-VM
Move-VMHost
New-CDDrive
New-Cluster
New-CustomAttribute
New-CustomField
New-Datacenter
New-Datastore
New-DrsRule
New-FloppyDrive
New-Folder
New-HardDisk
New-IScsiHbaTarget
New-NetworkAdapter
New-OSCustomizationNicMapping
New-OSCustomizationSpec
New-ResourcePool
New-Snapshot
New-StatInterval
New-Template
New-VApp
New-VICredentialStoreItem
New-VIPermission
New-VIRole
New-VirtualPortGroup
New-VirtualSwitch
New-VM
New-VMGuestRoute
New-VMHostAccount
New-VMHostNetworkAdapter
New-VMHostProfile
Remove-CDDrive
Remove-Cluster
Remove-CustomAttribute
Remove-CustomField
Remove-Datacenter
Remove-Datastore
Remove-DrsRule
Remove-FloppyDrive
Remove-Folder
Remove-HardDisk
Remove-Inventory
Remove-IScsiHbaTarget
Remove-NetworkAdapter
Remove-OSCustomizationNicMapping
Remove-OSCustomizationSpec
Remove-PassthroughDevice
Remove-ResourcePool
Remove-Snapshot
Remove-StatInterval
Remove-Template
Remove-UsbDevice
Remove-VApp
Remove-VICredentialStoreItem
Remove-VIPermission
Remove-VIRole
Remove-VirtualPortGroup
Remove-VirtualSwitch
Remove-VM
Remove-VMGuestRoute
Remove-VMHost
Remove-VMHostAccount
Remove-VMHostNetworkAdapter
Remove-VMHostNtpServer
Remove-VMHostProfile
Restart-VM
Restart-VMGuest
Restart-VMHost
Restart-VMHostService
Set-Annotation
Set-CDDrive
Set-Cluster
Set-CustomAttribute
Set-CustomField
Set-Datacenter
Set-Datastore
Set-DrsRule
Set-FloppyDrive
Set-Folder
Set-HardDisk
Set-IScsiHbaTarget
Set-NetworkAdapter
Set-NicTeamingPolicy
Set-OSCustomizationNicMapping
Set-OSCustomizationSpec
Set-PowerCLIConfiguration
Set-ResourcePool
Set-ScsiLun
Set-ScsiLunPath
Set-Snapshot
Set-StatInterval
Set-Template
Set-VApp
Set-VIPermission
Set-VIRole
Set-VirtualPortGroup
Set-VirtualSwitch
Set-VM
Set-VMGuestNetworkInterface
Set-VMGuestRoute
Set-VMHost
Set-VMHostAccount
Set-VMHostAdvancedConfiguration
Set-VMHostDiagnosticPartition
Set-VMHostFirewallDefaultPolicy
Set-VMHostFirewallException
Set-VMHostFirmware
Set-VMHostHba
Set-VMHostModule
Set-VMHostNetwork
Set-VMHostNetworkAdapter
Set-VMHostProfile
Set-VMHostService
Set-VMHostSnmp
Set-VMHostStartPolicy
Set-VMHostStorage
Set-VMHostSysLogServer
Set-VMQuestion
Set-VMResourceConfiguration
Set-VMStartPolicy
Shutdown-VMGuest
Start-VApp
Start-VM
Start-VMHost
Start-VMHostService
Stop-Task
Stop-VApp
Stop-VM
Stop-VMHost
Stop-VMHostService
Suspend-VM
Suspend-VMGuest
Suspend-VMHost
Test-VMHostProfileCompliance
Test-VMHostSnmp
Update-Tools
Wait-Task
}

{----------------- ADDM ----------------------------------
pstree -p | grep ssh
Kill active SSH sessions
Kill discovery sessions
Kill reasoning sessions

tw_svc_cluster_manager
tw_svc_cmdbsync_exporter
tw_svc_cmdbsync_transformer
tw_svc_discovery --daemon=status
tw_svc_discovery --daemon=stop
tw_svc_eca_engine
tw_svc_integrations
tw_svc_mainframe
tw_svc_model
tw_svc_phurnace
tw_svc_privileged
tw_svc_reasoning --daemon=status
tw_svc_reasoning --daemon=stop
tw_svc_reports
tw_svc_security
tw_svc_vault
tw_service_control --status
tw_dml_dipsupport
tw_dml_extract
tw_dml_generate
tw_dml_import
tw_privileged_control
tw_service_control
tw_service_progress

# ----------------------------- ADDM Cluster --------------------------
https://docs.bmc.com/docs/display/DISCO101/Troubleshooting+clusters
tw_svc_cluster_manager --daemon=STOP
tw_svc_cluster_manager --daemon=STATUS
tw_svc_cluster_manager --daemon=START

# To determine the health of a cluster
tw_cluster_control --show-members
# A machine has failed in my non-fault tolerant cluster / non-fault tolerant cluster / forcibly removed coordinator
tw_cluster_control --revert-to-standalone
# Removing all failed machines from the cluster
tw_cluster_control --remove-broken
tw_cluster_control --revert-to-standalone
# Cluster detecting wrong machine or incorrect VM as member
tw_cluster_control --replace-vm-uuid
sudo /sbin/service appliance start
tw_cluster_control --cluster-start-services
tw_cluster_control --fix-interrupted

# Reasoning doesn't want to start
Something has happened to usr/tideway/etc/consolidation.conf file. If you delete the file it will recreate an empty consolidation configuration. So if you are using consolidation you will need to reconfigure the system.

# Model service is not starting, pattern problem
ps aux | grep reasoning | grep -v grep (# reason service left behind, this command will help)
It certainly indicates that it had a problem when the system was shutting down. Is there a core file from around that time in /usr/tideway/cores
sudo /sbin/service tideway stop reasoning
tw_svc_reasoning --daemon stop
tw_svc_reasoning --daemon start
Start reasoning with "tw_svc_reasoning --deactivate-patterns" 	(# to deactive patterns, problem due to patterns)
Start the services that were not up yet with "sudo /sbin/service tideway start"
In the knowledge management UI, you can now re-activate all the patterns you need.

ADDM Services and Session Fix ($ ps auxw), tw_scan_control --stop/--start
netstat -an
service tideway status/stop
ps auxw | grep sshd

https://<server_Name>/ui/
<product>
						/SetupApplianceBaselineDiffs?check=appliance.opsys		(operating system)
																	.ntp.config	(NTP config file)
																	.crontab
																	.rpm
																	.os.rpm
																	.apache.conf
																	.apache.https
																	.apache.https
																	.dns
						/SetupViewTripwireReport											


Multi cmdb sync share thread?
Data store encryption?
Impacts with enabling new bai and mapping

ssh -i path_to_private_key <addm-ssh-user>@<nix-host> date (to check the SSH access on sanning machine)
}
																	
{----------------- Linux Commands -------------------------
accessdb                        mkhomedir_helper
add-shell                      mklost+found
addgroup                        mkswap
addpart                         modinfo
adduser                         modprobe
agetty                          mountpoint
apropos                         mt-gnu
apt                             namei
apt-cache                       ncal
apt-cdrom                       ncurses5-config
apt-config                      ncursesw5-config
apt-extracttemplates            neqn
apt-ftparchive                  networkctl
apt-get                         newusers
apt-key                         nisdomainname
apt-mark                        nologin
apt-sortpkgs                    nproc
aptitude-create-state-bundle    nroff
aptitude-curses                 nsenter
aptitude-run-state-bundle       nstat
arch                            numfmt
arpd                            oldfind
badblocks                       ownership
base64                          pam-auth-update
bash                            pam_getenv
bashbug                         pam_tally
biosdecode                      pam_tally2
blkdiscard                      pam_timestamp_check
blkid                           partx
blockdev                        perl
bootctl                         perl5.20.2
bridge                          pg
bsd-from                        pgrep
bsd-write                       pic
busctl                          ping
cal                             ping6
calendar                        pinky
captoinfo                       pivot_root
catchsegv                       pkill
catman                          pldd
cfdisk                          pmap
chage                           poweroff
chattr                          preconv
chcon                           printenv
chcpu                           printerbanner
chgpasswd                       prlimit
chpasswd                        ptx
chroot                          pwck
chrt                            pwconv
clear                           pwdx
clear_console                   pwunconv
colcrt                          raw
colrm                           rbash
column                          readlink
cpgr                            readprofile
cppw                            realpath
cron                            reboot
ctrlaltdel                      remove-shell
ctstat                          rename.ul
dash                            reset
debconf                         resize2fs
debconf-apt-progress            resizepart
debconf-communicate             rev
debconf-copydb                  rgrep
debconf-escape                  rmmod
debconf-set-selections          rmt-tar
debconf-show                    routef
debugfs                         routel
delgroup                        rsyslogd
delpart                         rtacct
deluser                         rtcwake
depmod                          rtmon
dhclient                        rtstat
dhclient-script                 run-parts
diff3                           runcon
dir                             runlevel
dircolors                       runuser
dmidecode                       savelog
dnsdomainname                   script
domainname                      scriptreplay
dpkg                            sdiff
dpkg-deb                        select-editor
dpkg-divert                     sensible-browser
dpkg-maintscript-helper         sensible-editor
dpkg-preconfigure               sensible-pager
dpkg-query                      service
dpkg-reconfigure                setarch
dpkg-split                      setsid
dpkg-statoverride               setterm
dpkg-trigger                    sfdisk
dumpe2fs                        sg
e2freefrag                      sha1sum
e2fsck                          sha224sum
e2image                         sha256sum
e2label                         sha384sum
e2undo                          sha512sum
e4defrag                        shadowconfig
eqn                             shred
expiry                          shuf
factor                          skill
faillog                         slabtop
fallocate                       snice
fdformat                        soelim
fdisk                           ss
filefrag                        start-stop-daemon
findfs                          stat
findmnt                         stdbuf
flock                           sulogin
fmt                             sum
free                            swaplabel
fsck                            swapoff
fsck.cramfs                     swapon
fsck.ext2                       switch_root
fsck.ext3                       sysctl
fsck.ext4                       systemctl
fsck.ext4dev                    systemd
fsck.minix                      systemd-analyze
fsck.nfs                        systemd-ask-password
fsfreeze                        systemd-cat
fstab-decode                    systemd-cgls
fstrim                          systemd-cgtop
geqn                            systemd-delta
getent                          systemd-detect-virt
getopt                          systemd-escape
getty                           systemd-hwdb
gpasswd                         systemd-inhibit
gpg                             systemd-machine-id-setup
gpg-zip                         systemd-notify
gpgsplit                        systemd-path
gpgv                            systemd-run
gpic                            systemd-stdio-bridge
groff                           systemd-tmpfiles
grog                            systemd-tty-ask-password-agent
grops                           tabs
grotty                          tac
grpck                           tailf
grpconv                         tarcat
grpunconv                       taskset
gtbl                            tbl
gzexe                           tc
halt                            tcptraceroute.db
hd                              telinit
helpztags                       tempfile
hexdump                         timedatectl
hostid                          timeout
hostnamectl                     tload
hwclock                         toe
i386                            top
iconvconfig                     traceproto.db
ifdown                          traceroute-nanog
ifquery                         traceroute.db
ifup                            traceroute6.db
infotocap                       troff
init                            truncate
insmod                          tset
installkernel                   tune2fs
invoke-rc.d                     tunelp
ionice                          tzconfig
ip                              tzselect
ipcmk                           udevadm
ischroot                        ul
isosize                         uncompress
journalctl                      unix_chkpwd
killall5                        unix_update
kmod                            unlink
last                            unshare
lastb                           unxz
lastlog                         update-alternatives
ldattach                        update-passwd
ldconfig                        update-rc.d
ldconfig.real                   uptime
ldd                             users
less                            utmpdump
lessecho                        vdir
lessfile                        vigr
lesskey                         vim.tiny
lesspipe                        vipw
lexgrog                         vmstat
lft.db                          vpddecode
line                            w.procps
link                            wall
linux32                         watch
linux64                         wdctl
lnstat                          wget
localectl                       whatis
login                           whereis
loginctl                        which
logrotate                       whiptail
logsave                         who
look                            whoami
lorder                          wipefs
losetup                         x86_64
lsattr                          xxd
lsblk                           xz
lscpu                           xzcat
lsipc                           xzcmp
lslocks                         xzdiff
lslogins                        xzegrep
lsmod                           xzfgrep
lspgpot                         xzgrep
lzmainfo                        xzless
mandb                           xzmore
manpath                         yes
mawk                            ypdomainname
mcookie                         zcmp
md5sum.textutils                zdiff
mesg                            zdump
mke2fs                          zegrep
mkfs                            zfgrep
mkfs.bfs                        zforce
mkfs.cramfs                     zgrep
mkfs.ext2                       zic
mkfs.ext3                       zless
mkfs.ext4                       zmore
mkfs.ext4dev                    znew
mkfs.minix                      zramctl
 
/bin : For binaries usable before the /usr partition is mounted. This is used for trivial binaries used in the very early boot stage or ones that you need to have available in booting single-user mode. Think of binaries like cat, ls, etc.
/sbin : Same, but for scripts with superuser (root) privileges required.
/usr/bin : Same as first, but for general system-wide binaries.
/usr/sbin : Same as above, but for scripts with superuser (root) privileges required.
 }

{----------------- Course Outline Essentials of Systems Engineer/Administrator ----------------
https://training.linuxfoundation.org/certification
You can see how LFS201 matches up with the domains and competencies tested in the LFCS exam with this downloadable content outline.
${LFCS}
Preface
Introduction
Relationship to LFS101x
Using as LFCS Exam Preparation
Course Formatting
Read the Documentation
Target Platform
Command Line vs Graphical Interface
Target Linux Distributions
Installation: What to Use for this Course
Course Timing
Lab Exercises
Change, Repetition, and Holy Wars
The Linux Foundation
Linux Foundation Training
Labs
System Startup and Shutdown
Understanding the Boot Sequence
BIOS
Boot Loaders
Configuration Files in /etc
/etc/sysconfig
/etc/default
Shutting Down and Rebooting
Labs
GRUB
What is GRUB?
Interactive Selections with GRUB at Boot
Installing GRUB
GRUB Device Nomenclature
Customizing the GRUB Configuration File
Labs
init: SystemV, Upstart, systemd
The init Process
Startup Alternatives
SysVinit Runlevels
SysVinit and /etc/inittab
SysVinit Startup Scripts
chkconfig
service
chkconfig and service on Debian-based Systems
Upstart
Upstart Utilities
systemd
systemd Configuration Files
Systemctl
Labs
Linux Filesystem Tree Layout
One Big Filesystem
Data Distinctions
FHS Linux Standard Directory Tree
Main Directory Layout
The root (/) Directory and Filesystem
/bin
/boot
Other Files and Directories in /boot
/dev
/etc
/home
/lib
/media
/mnt
/opt
/proc
/sys
/root
/sbin
/tmp
/usr
/var
/run
Labs
Kernel Services and Configuration
Kernel Overview
Main Kernel Tasks
Kernel Command Line
Kernel Boot Parameters
sysctl
Labs
Kernel Modules
Advantages of Kernel Modules
Module Utilities
Module Loading and Unloading
modprobe
Some Considerations with Modules
modinfo
Module Parameters
Kernel Module Configuration
Labs
Devices and udev
Device Nodes
Major and Minor Numbers
udev
udev Components
udev and Hotplug
The udev Device Manager
udev Rule Files
Creating udev Rules
Some Examples of Rules Files
Labs
Partitioning and Formatting Disks
Common Disk Types
Disk Geometry
Partitioning
Why partition?
Partition Table
Naming Disk Devices and Nodes
More on SCSI Device Names
blkid and lsblk
Sizing up partitions
Backing up and Restoring Partition Tables
Partition table editors
Using fdisk
Labs
Encrypting Disks
Why Use Encryption?
LUKS
cryptsetup
Using an Encrypted Partition
Mounting at Boot
Labs
Linux Filesystems and the VFS
Filesystem Basics
Filesystem Tree Organization
Virtual File System (VFS)
Available Filesystems
Journalling Filesystems
Current Filesystem Types
Special Filesystems
Labs
Filesystem Features: Attributes, Creating, Checking, Mounting
Inodes
Directory Files
Extended Attributes and lsattr/chattr
Creating and Formatting Filesystems
Checking and Fixing Filesystems
Mounting and Unmounting Filesystems
mount
mount Options
umount
Mounting Filesystems at Boot
Listing Currently Mounted Filesystems
Labs
Filesystem Features: Swap, Quotas, Usage
Swap
Quotas
Setting up Quotas
quotacheck
Turning quotas on and off
Examining Quotas
Setting quotas
Filesystem Usage
Disk Space Usage
Labs
The Ext2/Ext3/Ext4 Filesystems
Ext4 History and Basics
Ext4 Features
Ext4 Layout
Block Groups
dumpe2fs
tune2fs
Superblock Information
Data Blocks and Inodes
Ext4 Filesystem Enhancements
Labs
The XFS and btrfs Filesystems
XFS Features
XFS Filesystem Maintenance
The btrfs Filesystem
Labs
Logical Volume Management (LVM)
LVM
LVM and RAID
Volumes and Volume Groups
Logical Volumes Utilities
Creating Logical Volumes
Displaying Logical Volumes
Resizing Logical Volumes
Examples of Resizing
LVM Snapshots
Labs
RAID
RAID Levels
Software RAID Configuration
Monitoring RAIDs
RAID Hot Spares
Labs
Local System Security
Creating a Security Policy
What to Include in the Policy
What Risks to Assess
Choosing a Security Philosophy
Some General Security Guidelines
Updates and Security
Hardware Accessibility and Vulnerability
Hardware Access Guidelines
Protection of BIOS
Protecting the Boot Loader with Passwords
Filesystem Security: mount Options
setuid and setgid
Setting the setuid/setgid Bits
Labs
Linux Security Modules
What are Linux Security Modules?
LSM Choices
SELinux Overview
SELinux Modes
SELinux Policies
Context Utilities
SELinux and Standard Command Line Tools
SELinux Context Inheritance and Preservation
restorecon
semanage fcontext
Using SELinux Booleans
getsebool and setsebool
Troubleshooting Tools
Additional Online Resources
AppArmor
Labs
Processes
Processes, Programs and Threads
The init Process
Processes
Process Attributes
Controlling Processes with ulimit
Process Permissions and setuid
Process States
Execution Modes
User Mode
System Mode
Daemons
Kernel-Created Processes
Process Creating and Forking
Creating Processes in a Command Shell
Using nice to Set Priorities
Modifying the Nice Value
Labs
Signals
What are Signals?
Types of Signals
kill
killall and pkill
Labs
System Monitoring
Available Monitoring Tools
The /proc and /sys Pseudo-filesystems
/proc Basics
A Survey of /proc
/proc/sys
/sys Basics
A Survey of /sys
sar
Labs
Process Monitoring
Monitoring Tools
Viewing Process States with ps
BSD Option Format for ps
ps Output Fields
UNIX Option Format for ps
Customizing the ps Output
Using pstree
Viewing System Loads with top
top Options
Labs
I/O Monitoring and Tuning
Disk Bottlenecks
iostat
iostat Options
iostat Extended Options
iotop
Using ionice to Set I/O Priorities
Labs
I/O Scheduling
I/O Scheduling
I/O Scheduler Choices
I/O Scheduling and SSD Devices
Tunables and Switching The I/O Scheduler at Run Time
CFQ (Completely Fair Queue Scheduler)
CFQ Tunables
Deadline Scheduler
Deadline Tunables
Labs
Memory: Monitoring Usage and Tuning
Memory Tuning Considerations
Memory Monitoring Tools
/proc/sys/vm
vmstat
/proc/meminfo
OOM Killer
Labs
Package Management Systems
Software Packaging Concepts
Why Use Packages?
Packages Types
Available Package Management Systems
Packaging Tool Levels and Varieties
Package Sources
Creating Software Packages
Labs
RPM
RPM
Advantages of Using RPM
Package File Names
Database Directory
Helper Programs and Modifying Settings
Queries
Verifying Packages
Installing Packages
Uninstalling Packages
Upgrading Packages
Freshening Packages
Upgrading the Kernel
Using rpm2cpio
Labs
DPKG
DPKG Essentials
Package File Names
Source Packages
DPKG Queries
Installing/Upgrading/Uninstalling Packages
Labs
yum
Package Installers
What Is yum?
Configuring yum to Use Repositories
Repository Files
Queries
Verifying Packages
Installing/Removing/Upgrading Packages
Additional Commands
Labs
zypper
What Is zypper?
zypper Queries
Installing/Removing/Upgrading
Additional zypper Commands
Labs
APT
What Is APT?
apt-get
Queries Using apt-cache
Installing/Removing/Upgrading
Labs
User Account Management
User Accounts
Attributes of a User Account
Creating User Accounts with useradd
Modifying and Deleting User Accounts
Locked Accounts
User IDs and /etc/passwd
/etc/shadow
Why Use /etc/shadow?
Password Management
chage: Password Aging
Restricted shell
Restricted Accounts
The root Account
SSH
ssh Configuration Files
Labs
Group Management
Groups
Group Management
User Private Groups
Group Membership
Labs
File Permissions and Ownership
Owner, Group and World
File Access Rights
File Permissions and Security and Authentication
Changing permissions: chmod
chmod: Numerical Syntax for Permissions
Changing User and Group File Ownership: chown and chgrp
umask
Filesystem ACLs
Getting and Setting ACLs
Labs
Pluggable Authentication Modules (PAM)
PAM: A Unified Approach to Authentication
Authentication Process
PAM Configuration Files
PAM Rules
LDAP Authentication
Labs
Backup and Recovery Methods
Why Backups?
What Needs Backup?
Tape Drives
Backup Methods
Backup Strategies
Backup Utilities
cpio
Using tar for Backups
Using tar for Restoring Files
Incremental Backups with tar
Compression: gzip, bzip2 and xz and Backups
dd
dd Examples
rsync
dump and restore
dump Options
Level 0 backup with dump
restore
mt
Backup Programs
Labs
Network Addresses
IP Addresses
IPv4 Address Types
Special Addresses
IPv6 Address Types
IPv4 Address Classes
Netmasks
Hostname
Getting and Setting the Hostname
Labs
Network Devices and Configuration
Network Devices
Problems with Network Device Names
Predictable Network Interface Device Names
Examples of the New Naming Scheme
NIC Configuration Files
ifconfig
The ip Utility
Examples of Using ip
Routing
Default Route
Static Routes
Name Resolution
/etc/hosts
DNS
Network Diagnostic Utilities
Labs
Firewalls
What is a Firewall
Firewall Interfaces and Tools
firewalld
firewalld Service Status
Zones
Zone Management
Source Management
Service and Port Management
Labs
Basic Troubleshooting
Troubleshooting Overview
Basic Techniques
Intuition and Experience
Things to Check: Networking
Things to Check: File Integrity
Boot Process Failures
Filesystem Corruption and Recovery
Using Rescue/Recovery Media
Common Utilities on Rescue/Recovery Disks
Using Rescue/Recovery Media
Labs
System Rescue
Emergency Boot Media
Using Rescue Media
Rescue USB Key
Emergency Mode
Single User Mode
Labs
Close
${LFCE}
Network administration

Configure network services to start automatically at boot
Implement packet filtering
Monitor network performance
Produce and deliver reports on system use, outages and user requests
Route IP traffic statically and dynamically
Troubleshoot network issues
Network filesystems and file services

Configure systems to mount standard, encrypted and network file systems on demand
Create, mount and unmount standard Linux file systems
Provide/configure network shares via NFS
Transfer files securely via the network
Update packages from the network, a repository or the local file system
Network security

Configure Apache log files
Configure the firewall with iptables
Install and configure SSL with Apache
Configuring SSH-based remote access using public/private key pairs
Remote access

Configure the firewall with iptables
HTTP services

Configure an http client to automatically use a proxy server
Install and configure an Apache web server
Install and configure the Squid proxy server
Restrict access to a web page with Apache
Restrict access to the Squid proxy server
Setting up name-based virtual web hosts
Email services

Configure email aliases
Install and configure an IMAP and IMAPS service
Install and configure an smtp service
Restrict access to an smtp server

 }
 
{ ---------------- URLs --------------------------------------
User Mode Linux (UML)
What is "command /dev/null 2>&1 means" --> any output of command will go to null STDOUT box and error to STDERR box 
> redirect the program’s output somewhere (In this case, something is being redirected into /dev/null)
Standard in, out and err are buit-in numbered 0, 1, and 2 in Linux / STDIN=0, STDOUT=1, STDERR=2

http://www.tldp.org/guides.html
http://www.stlinux.com/arm-bringup-tools
TextSecure and openwhisper.org
https://technet.microsoft.com/en-us/sysinternals/default
https://live.sysinternals.com/
http://www.onlyinyourstate.com/states/kansas/
http://www.webdavsystem.com/server/access/carddav/
http://linuxcommand.org/lc3_adv_termmux.php
http://aperiodic.net/screen/quick_reference
http://linuxcommand.org/lc3_adv_tput.php
http://wiki.bash-hackers.org/scripting/terminalcodes
http://wiki.bash-hackers.org/
http://www.stlinux.com/
http://www.linfo.org/filesystem.html
http://tldp.org/LDP/intro-linux/html/sect_03_01.html
https://ext4.wiki.kernel.org/index.php/Ext4_Disk_Layout
http://web.cs.wpi.edu/~rek/DCS/D04/UnixFileSystems.html
https://access.redhat.com/documentation/en/red-hat-enterprise-linux/
http://mikeos.sourceforge.net/write-your-own-os.html and http://mikeos.sourceforge.net/ and http://tomos.sourceforge.net/
http://www.osdever.net/bkerndev/Docs/intro.htm
http://www.jamesmolloy.co.uk/tutorial_html/index.html
http://wiki.osdev.org/Main_Page
http://www.freertos.org/
http://ntfs.com/
http://blog.atmel.com/
https://www.metasploit.com/
https://www.normshield.com
https://www.cvedetails.com/
https://curl.haxx.se/docs/httpscripting.html#Host
http://stretch-cloud.info/2015/02/experimenting-rest-api-tools-can-use-part-iv/
http://www.virtuallyghetto.com/2016/02/how-to-remotely-run-appliancesh-other-shell-commands-on-vcsa-wo-requiring-ssh.html
http://www.doublecloud.org/vmware-vsphere-api-and-sdk-faq/
https://www.pdflabs.com/docs/pdftk-cli-examples/
http://blog.rubypdf.com/2008/11/18/pdfcrypt-another-free-pdf-encrypt-and-decrypt-software/
http://flagscanner.com/
https://pdfbox.apache.org/index.html
http://www.commandlinefu.com/commands/browse/sort-by-votes
https://www.stigviewer.com/stig/red_hat_enterprise_linux_6/2014-06-11/
https://commoncontrolshub.com/overview/
http://www.windowsecurity.com/
http://www.nist.org/news.php?extend.93
}

{ GIT HUB
https://github.company.com/CTSSolutions/ADDM.git

}

{ Linux STIG ************************************************
grep 'x:0:' /etc/passwd									(# If any user has UID 0 besides root)
grep root /etc/group									(# check if the user is a member of the root group:)
cat /etc/sudoers											(# To see if anyone can execute commands as root, check sudoers)
find / -perm -04000										(# To check for SUID bit, which allows programs to be executed with root privileges:)
getent passwd 0											(# To see who is UID 0:)
getent passwd | cut -d : -f 1 | xargs groups				(# To list all users and the groups they are members of:)
getent group root wheel adm admin						(# To see who is in groups root, wheel adm and admin:)
sudo -l													(# check what command a logged in user can run)

STIGS
	grep PASS_MIN_DAYS /etc/login.defs			(#Password change in 24 hours not allowed) 
		PASS_MIN_DAYS [DAYS]
	grep PASS_MAX_DAYS /etc/login.defs			(#To check the maximum password age)
		PASS_MAX_DAYS [DAYS]
	grep pam_cracklib /etc/pam.d/system-auth	(#The "dcredit" parameter (as a negative number) will indicate how many digits are required)
		dcredit=1
		ucredit=1								(#The "ucredit" parameter (as a negative number) will indicate how many uppercase characters are required)
		ucredit=1								(#The system must require passwords to contain at least one uppercase alphabetic character.)
		ocredit=1								(#must contain special character)
		lcredit=1
		difok=4									(#must differ 4 characters from previous password)
	grep pam_faillock /etc/pam.d/system-auth-ac (#Add the following lines immediately below the "pam_unix.so" statement in the AUTH section of "/etc/pam.d/system-auth-ac" and "/etc/pam.d/password-auth-ac": )
	grep pam_faillock /etc/pam.d/password-auth-ac
	grep SINGLE /etc/sysconfig/init				(#single user mode authentication)
	grep PROMPT /etc/sysconfig/init				()
		PROMPT=no
	grep remember /etc/pam.d/system-auth		(#In the file "/etc/pam.d/system-auth", append "remember=24" to the line which refers to the "pam_unix.so" module)
		remember=24
	grep pam_cracklib /etc/pam.d/system-auth	(#max value for consecutive repeating character)
		maxrepeat
	grep "INACTIVE" /etc/default/useradd			(# disable account inactive more than 35 days)
		INACTIVE=35
	grep pam_faillock /etc/pam.d/system-auth-ac	(auth [default=die] pam_faillock.so authfail deny=3 unlock_time=604800 fail_interval=900)
	grep pam_faillock /etc/pam.d/password-auth-ac (auth [default=die] pam_faillock.so authfail deny=3 unlock_time=604800 fail_interval=900)
	grep ClientAliveInterval /etc/ssh/sshd_config	(#SSH Idle time out)
		ClientAliveInterval [interval] = ClientAliveInterval 900
	grep ClientAliveCountMax /etc/ssh/sshd_config
		ClientAliveCountMax 0
	grep PermitUserEnvironment /etc/ssh/sshd_config	(# SSH user environment settings)
		PermitUserEnvironment no
	grep "maxlogins" /etc/security/limits.conf		(# Must limit 10 login simultaneous sessions)
		hard maxlogins 10
	grep 'v1\|v2c\|com2sec' /etc/snmp/snmpd.conf | grep -v '^#'		(# Use only SNMP 3 version)
	grep -v "^#" /etc/snmp/snmpd.conf| grep public	(# SNMP should not use default password)
	
}

{ Named User accounts
AllowUsers rpdscan
AllowUsers SN035704
AllowUsers RT031312
AllowUsers ND042246
AllowUsers SG042720
AllowUsers JS027226
AllowUsers AM028787
AllowUsers svcaddm
AllowUsers BW022097
AllowUsers NK045693
AllowUsers JG044205

}

They took some expert unix admins and beginners unix admins, they give them a written task and when they scored both there wasn't much differenrce between expert unix admins and beginners unix admins. they said why we are paying so much money when beginners can do the same thing. Objectively they are not much better than the beginners

Now they both put them at front of machine and give them a task. There was a huge difference of performace, what they saw the experts can perform the amazing things than the beginners are struggling with, and conclusion was that what expert unix admins great at knowning things but in figuring things out
