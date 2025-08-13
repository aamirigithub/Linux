#!/bin/bash
${Advanced Bash-Scripting Guide} 
http://www.tldp.org/LDP/abs/html/}
http://www.tldp.org/LDP/abs/html/special-chars.html
http://wiki.bash-hackers.org/syntax/redirection

${Virtual directories}
/proc
/sys 
/dev 

# This line is a comment.
echo "The # here does not begin a comment."
echo 'The # here does not begin a comment.'
echo The \# here does not begin a comment.
echo The # here begins a comment.
echo ${PATH#*:}       # Parameter substitution, not a comment.
echo $(( 2#101011 ))  # Base conversion, not a comment.
# Whenever you reference a descriptor, to point to its current target file, then you use a "&" followed by a the descriptor number:
# this executes the echo-command and redirects its normal output (stdout) to the standard error target
echo "There was an error" 1>&2

${Standard outputs}
Name	FD	Description
stdin	0	standard input stream (e.g. keyboard)
stdout	1	standard output stream (e.g. monitor)
stderr	2	standard error output stream (usually also on monitor)

# Valid redirection targets and sources
Syntax				Description
FILENAME			references a normal, ordinary filename from the filesystem (which can of course be a FIFO, too. Simply everything you can reference in the filesystem)
&N					references the current target/source of the filedescriptor N ("duplicates" the filedescriptor)
&-					closes the redirected filedescriptor, useful instead of > /dev/null constructs (> &-)
/dev/fd/N			duplicates the filedescriptor N, if N is a valid integer
/dev/stdin			duplicates filedescriptor 0 (stdin)
/dev/stdout			duplicates filedescriptor 1 (stdout)
/dev/stderr			duplicates filedescriptor 2 (stderr)
/dev/tcp/HOST/PORT	assuming HOST is a valid hostname or IP address, and PORT is a valid port number or service name: redirect from/to the corresponding TCP socket
/dev/udp/HOST/PORT	assuming HOST is a valid hostname or IP address, and PORT is a valid port number or service name: redirect from/to the corresponding UDP socket

${Redirections}
# Redirecting output
N > TARGET
# Appending redirected output
N >> TARGET
# Redirecting output and error output
&> TARGET
>& TARGET
# This special syntax redirects both, stdout and stderr to the specified target. It's equivalent to
> TARGET 2>&1	# Since Bash4, there's &>>TARGET, which is equivalent to >> TARGET 2>&1.
# Appending redirected output and error output
>> FILE 2>&1
&>> FILE
# Transporting stdout and stderr through a pipe
COMMAND1 2>&1 | COMMAND2
COMMAND1 |& COMMAND2
# Redirecting input
N < SOURCE		# The input descriptor N uses SOURCE as its data source. If N is omitted, filedescriptor 0 (stdin) is assumed.
Here documents
<<TAG
...
TAG
<<-TAG
...
TAG
# A here-document is an input redirection using source data specified directly at the command line (or in the script), no "external" source. The redirection-operator << is used together with a tag TAG that's used to mark the end of input later:
# display help

cat <<EOF
Sorry...
No help available yet for $PROGRAM.
Hehe...
EOF
# As you see, substitutions are possible. To be precise, the following substitutions and expansions are performed in the here-document data: 
# if the redirection operator << is followed by a - (dash), all leading TAB from the document data will be ignored
cat <<"EOF"
This won't be expanded: $PATH
EOF

# Here strings
<<< WORD
cat <<< "Hello world... $NAME is here..."
cat <<< 1.txt 2.txt 3.txt
# Multiple redirections
# { echo OUTPUT; echo ERRORS >&2; } is to simulate something that outputs to STDOUT and STDERR
# you can test with it
{ echo OUTPUT; echo ERRORS >&2; } 2>&1 1>/dev/null
command >/dev/null 2>&1

${Compound commands}
Grouping
{ …; }	command grouping
( … )	command grouping in a subshell
Conditionals
[[ ... ]]	conditional expression
if …; then …; fi	conditional branching
case … esac	pattern-based branching
Loops
for word in …; do …; done	classic for-loop
for ((x=1; x<=10; x++)); do ...; done	C-style for-loop
while …; do …; done	while loop
until …; do …; done	until loop
Misc
(( ... ))	arithmetic evaluation
select word in …; do …; done	user selections

${Builtin Commands}
Declaration commands
declare	Display or set shell variables or functions along with attributes.	typeset	builtin
export	Display or set shell variables, also giving them the export attribute.	typeset -x	special builtin
eval	Evaluate arguments as shell code.	-	special builtin
local	Declare variables as having function local scope.	-	builtin
readonly	Mark variables or functions as read-only.	typeset -r	special builtin
unset	Unset variables and functions.	-	special builtin
shift	Shift positional parameters	-	special builtin

${ GLOBAL Variables }
{ Examples are located here: http://www.tldp.org/LDP/abs/html/internalvariables.html
$BASH - The path to the Bash binary itself
$BASH_ENV - An environmental variable pointing to a Bash startup file to be read when a script is invoked
$BASH_SUBSHELL - A variable indicating the subshell level. This is a new addition to Bash, version 3.
$BASHPID - Process ID of the current instance of Bash. This is not the same as the $$ variable, but it often gives the same result.
$BASH_VERSINFO[n] - A 6-element array containing version information about the installed release of Bash. This is similar to $BASH_VERSION,
# BASH_VERSINFO[0] = 3                      # Major version no.
# BASH_VERSINFO[1] = 00                     # Minor version no.
# BASH_VERSINFO[2] = 14                     # Patch level.
# BASH_VERSINFO[3] = 1                      # Build version.
# BASH_VERSINFO[4] = release                # Release status.
# BASH_VERSINFO[5] = i386-redhat-linux-gnu  # Architecture
$BASH_VERSION - The version of Bash installed on the system
$CDPATH - A colon-separated list of search paths available to the cd command, similar in function to the $PATH variable for binaries. The $CDPATH variable may be set in the local ~/.bashrc file.
$DIRSTACK - The top value in the directory stack [1] (affected by pushd and popd). This builtin variable corresponds to the dirs command, however dirs shows the entire contents of the directory stack.
$EDITOR - The default editor invoked by a script, usually vi or emacs.
$EUID - "effective" user ID number. Identification number of whatever identity the current user has assumed, perhaps by means of su.Caution. The $EUID is not necessarily the same as the $UID.
$FUNCNAME - Name of the current function
$GLOBIGNORE - A list of filename patterns to be excluded from matching in globbing.
$GROUPS - Groups current user belongs to. This is a listing (array) of the group id numbers for current user, as recorded in /etc/passwd and /etc/group.
echo $GROUPS
0
echo ${GROUPS[1]}
1
echo ${GROUPS[5]}
6
$HOME - Home directory of the user, usually /home/username
$HOSTNAME - The hostname command assigns the system host name at bootup in an init script. However, the gethostname() function sets the Bash internal variable $HOSTNAME.
$HOSTTYPE - host type, Like $MACHTYPE, identifies the system hardware.
$IFS - internal field separator. This variable determines how Bash recognizes fields, or word boundaries, when it interprets character strings.
$IGNOREEOF - Ignore EOF: how many end-of-files (control-D) the shell will ignore before logging out.
$LC_COLLATE - Often set in the .bashrc or /etc/profile files, this variable controls collation order in filename expansion and pattern matching. If mishandled, LC_COLLATE can cause unexpected results in filename globbing.
$LC_CTYPE - This internal variable controls character interpretation in globbing and pattern matching.
$LINENO - This variable is the line number of the shell script in which this variable appears. It has significance only within the script in which it appears, and is chiefly useful for debugging purposes.
$MACHTYPE - machine type, Identifies the system hardware.
$OLDPWD - Old working directory ("OLD-Print-Working-Directory", previous directory you were in).
$OSTYPE - operating system type
$PATH - Path to binaries, usually /usr/bin/, /usr/X11R6/bin/, /usr/local/bin, etc.
$PIPESTATUS - Array variable holding exit status(es) of last executed foreground pipe.
$PPID - The $PPID of a process is the process ID (pid) of its parent process.
$PROMPT_COMMAND - A variable holding a command to be executed just before the primary prompt, $PS1 is to be displayed.
$PS1 - This is the main prompt, seen at the command-line.
$PS2 - The secondary prompt, seen when additional input is expected. It displays as ">".
$PS3 - The tertiary prompt, displayed in a select loop (see Example 11-30).
$PS4 - The quartenary prompt, shown at the beginning of each line of output when invoking a script with the -x [verbose trace] option. It displays as "+".
$PWD - Working directory (directory you are in at the time). This is the analog to the pwd builtin command.
$REPLY - The default value when a variable is not supplied to read. Also applicable to select menus, but only supplies the item number of the variable chosen, not the value of the variable itself.
$SECONDS - The number of seconds the script has been running.
$SHELLOPTS - The list of enabled shell options, a readonly variable.
$SHLVL - Shell level, how deeply Bash is nested. [3] If, at the command-line, $SHLVL is 1, then in a script it will increment to 2.
$TMOUT - If the $TMOUT environmental variable is set to a non-zero value time, then the shell prompt will time out after $time seconds. This will cause a logout.
$UID - User ID number. Current users user identification number, as recorded in /etc/passwd
}

${ POSITIONAL PARAMETERS}
{
$0, $1, $2, etc.
Positional parameters, passed from command line to script, passed to a function, or set to a variable (see Example 4-5 and Example 15-16)
$#
Number of command-line arguments [4] or positional parameters (see Example 36-2)
$*
All of the positional parameters, seen as a single word
$@
Same as $*, but each parameter is a quoted string, that is, the parameters are passed on intact, without interpretation or expansion. This means, among other things, that each parameter in the argument list is seen as a separate word. Note: Of course, "$@" should be quoted.
$-
Flags passed to script (using set). 
$!
PID (process ID) of last job run in background
$_
Special variable set to final argument of previous command executed.
$?
Exit status of a command, function, or the script itself
$$
Process ID (PID) of the script itself. [5] The $$ variable often finds use in scripts to construct "unique" temp file names

}

${ Special Characters }
{
# ; [semicolon]. Permits putting two or more commands on the same line.
echo hello; echo there
# . [dot] as a component of a filename. When working with filenames, a leading dot is the prefix of a "hidden" file, a file that an ls will not normally show.
# "" [double quote] "STRING" preserves (from interpretation) most of the special characters within STRING
# '' [single quote] 'STRING' preserves all special characters within STRING. This is a stronger form of quoting than "STRING".
# ; [comma]. The comma operator [1] links together a series of arithmetic operations. The comma operator can also concatenate strings.
# \ [backslash]. A quoting mechanism for single characters. \X escapes the character X. This has the effect of "quoting" X, equivalent to 'X'. The \ may be used to quote " and ', so they are expressed literally.
# / [forward slash]. Separates the components of a filename (as in /home/bozo/projects/Makefile).
# ` ` The `command` construct makes available the output of command for assignment to a variable. This is also known as backquotes or backticks.
# : null command [colon]. This is the shell equivalent of a "NOP" (no op, a do-nothing operation). It may be considered a synonym for the shell builtin true. The ":" command is itself a Bash builtin, and its exit status is true (0).
Provide a placeholder where a command is expected : ${HOSTNAME?} ${USER?} ${MAIL?}
# ! reverse (or negate) the sense of a test or exit status [bang].
# * [asterisk]. The * character serves as a "wild card" for filename expansion in globbing. By itself, it matches every filename in a given directory.
echo *
# ? [question mark] test operator. Within certain expressions, the ? indicates a test for a condition. The ? character serves as a single-character "wild card" for filename expansion in globbing, as well as representing one character in an extended regular expression.
# $ Variable substitution (contents of a variable). A $ prefixing a variable name indicates the value the variable holds.
var1=5
var2=23skidoo
echo $var1     # 5
echo $var2     # 23skidoo
# ${ } Parameter substitution 
# $' ... ' Quoted string expansion. This construct expands single or multiple escaped octal or hex values into ASCII [3] or Unicode characters.
# $*, $@ positional parameters.
# $? exit status variable. The $? variable holds the exit status of a command, a function, or of the script itself.
# $$ process ID variable. The $$ variable holds the process ID [4] of the script in which it appears.
# () command group.
(a=hello; echo $a)
}

${Breaking up lines}
# Indention using command width:

activate some_very_long_option \
         some_other_option
		 
# Indention using two spaces:

activate some_very_long_option \
  some_other_option

${ Defining variables }
{
my_input=""
my_array=()
my_number=0		# no spcae after = sign

echo $abc
echo ${abc}
echo "$abc"
echo '$abc'		#will not show variable value

Let a=1+1
echo $abc		# answer will be 2, it will add it

# Quoting
# the asterisk * represents a wild card character in globbing and Regular Expressions
echo $(ls -l)
echo "$(ls -l)"
}

${ Conditions (IF THEN ELSE) }
{
<# Comparison Operators -eq(equal) -ne(not equal) -gt(greater than) -ge(greater or equal) -lt(less than) -le(less than or equal) \ 
<(less than) <=(less than or equal) >(greater than) >=(greater than or equal) \ 
String Comparison: =(is equal to) ==(is equal to) !=(is not equal to) -z(string is null, zero length) -n(string is not null)
 Compound Comparison: -a(exp1 -a exp2 returns true if both exp1 and exp2 are true) -o(exp1 -o exp2 returns true if either exp1 or exp2 is true)
 These are similar to the Bash comparison operators && and ||, used within double brackets [[ condition1 && condition2 ]]
#>

---- if/then/elif/else ----
if ...; then
  ...
elif ...; then
  ...
else
  ...
fi

if [ "$a" -eq "$b" ]
if [["$a" -eq "$b" || "$x" -eq "$y" ]]

---- for -----

for f in /etc/*; do
  ...
done

---- while/until ----

while [[ $answer != [YyNn] ]]; do
  ...
done



${ Exit Statement }
{
# Exit code, Every command returns an exit status (sometimes referred to as a return status or exit code). 
# A successful command returns a 0, while an unsuccessful one returns a non-zero value that usually can be interpreted as an error code. 
# Well-behaved UNIX commands, programs, and utilities return a 0 exit code upon successful completion, though there are some exceptions.
exit 0
exit $?			(# The equivalent of a bare exit is exit $? or even just omitting the exit)

ls | some_command
exit $?			(# will return 127)
}

${ Functions } # All functions must be declared before they can be used next in a script
{

function_name () {
	<commands>
}

function function_name {
	<commands>
}

# Passing arguments to a function
print_something () {
	echo Hello $1
}
print_something Mars

# Setting a return status for a function
print_something () {
echo Hello $1
return 5
}
# calling a function by just typing a name or giving an argument
print_something Mars
print_something Jupiter
echo The previous function has a return value of $?
}

${ Input/Output File/Directory }
{
echo - prints to stdout and expression or variable, use -e option to manage ESC characters, -n option supresses newline
echo hello
echo $hello
echo -e "\e[1;91m Newline \e[0;97m"

printf

read

source - invokes another script within a script, equal to include or calling other script

# File test operator, Returns true if...
-e(file exists), -a(file exists), 
This is identical in effect to -e. It has been "deprecated," [1] and its use is discouraged.
-f(file is a regular file (not a directory or device file))
-s(file is not zero size)
-d(file is a directory)
-b(file is a block device)
-c(file is a character device)

# to find a home directory of a user
${HOME}
dirname
# Include code from other file
source /my_script.sh
source . /path/to/file # Be warned that this will litterally include the first, so any code in the first will be executed as if it were litterally in the place of the line
}

${ ERROR Handling }
{
bash: [: too many arguments
If your $VARIABLE is a string containing spaces or other special characters, and single square brackets are used (which is a shortcut for the test command), then the string may be split out into multiple words. Each of these is treated as a separate argument.

# If your script exits, provide a meaningful exit code. That minimally means:
exit 0 (zero) if everything is okay
exit 1 - in general non-zero - if there was an error

}

${Shell Script Graphics & Colors}
{

# ------------ TPUT -----------------
The format of the tput command is illustrated below.

tput [options] capability [parameter ...]
tput [options] longname
tput [options] init
tput [options] reset
GNU tput takes the following options:

[-T terminal-type] [--terminal=terminal-type] 
[-t] [--termcap]
[-S] [--standard-input]
[-V] [--version]

#----- Example 1
#!/bin/bash
 
# clear the screen
tput clear
 
# Move cursor to screen location X,Y (top left is 0,0)
tput cup 3 15
 
# Set a foreground colour using ANSI escape
tput setaf 3
echo "XYX Corp LTD."
tput sgr0
 
tput cup 5 17
# Set reverse video mode
tput rev
echo "M A I N - M E N U"
tput sgr0
 
tput cup 7 15
echo "1. User Management"
 
tput cup 8 15
echo "2. Service Management"
 
tput cup 9 15
echo "3. Process Management"
 
tput cup 10 15
echo "4. Backup"
 
# Set bold mode 
tput bold
tput cup 12 15
read -p "Enter your choice [1-4] " choice
 
tput clear
tput sgr0
tput rc

home() {
  # yes, actually not much shorter ;-)
  tput home
  
# ------- Example 2 ---------
# The following example is a shell script that centers a line of text given as command line arguments
COLUMNS=`tput cols` export COLUMNS # Get screen width.
echo "$@" | awk '
{ spaces = ('$COLUMNS' - length) / 2
  while (spaces-- > 0) printf (" ")
  print
}'
# The following commands cause the terminal to save the current cursor position, print `Hello, World' centered in the screen in reverse video
COLUMNS=`tput cols`
LINES=`tput lines`
line=`expr $LINES / 2`
column=`expr \( $COLUMNS - 6 \) / 2`
tput sc
tput cup $line $column
tput rev
echo 'Hello, World'
tput sgr0
tput rc

# The middle three lines of the above example can also be written using `--standard-input'.

tput --standard-input <<EOF
sc
cup $line $column
rev
EOF


}

# ----------------- Keyboard LEDs -----------
setleds -D +num
setleds -D -num

# ----------------- Dialog -----------------

# ----------------- SetTerm ----------------
[ -term terminal_name ]
  [ -reset ]
  [ -initialize ]
  [ -cursor [on|off] ]
  [ -repeat [on|off] ]
  [ -appcursorkeys [on|off] ]
  [ -linewrap [on|off] ]
  [ -default ]
  [ -foreground black|blue|green|cyan|red|magenta|yellow|white|default ]
  [ -background black|blue|green|cyan|red|magenta|yellow|white|default ]
  [ -ulcolor black|grey|blue|green|cyan|red|magenta|yellow|white ]
  [ -ulcolor bright blue|green|cyan|red|magenta|yellow|white ]
  [ -hbcolor black|grey|blue|green|cyan|red|magenta|yellow|white ]
  [ -hbcolor bright blue|green|cyan|red|magenta|yellow|white ]
  [ -inversescreen [on|off] ]
  [ -bold [on|off] ]
  [ -half-bright [on|off] ]
  [ -blink [on|off] ]
  [ -reverse [on|off] ]
  [ -underline [on|off] ]
  [ -store ]
  [ -clear [all|rest] ]
  [ -tabs [ tab1 tab2 tab3 ... ] ]      (tabn = 1-160)
  [ -clrtabs [ tab1 tab2 tab3 ... ] ]   (tabn = 1-160)
  [ -regtabs [1-160] ]
  [ -blank [0-60|force|poke] ]
  [ -dump   [1-NR_CONSOLES] ]
  [ -append [1-NR_CONSOLES] ]
  [ -file dumpfilename ]
  [ -msg [on|off] ]
  [ -msglevel [0-8] ]
  [ -powersave [on|vsync|hsync|powerdown|off] ]
  [ -powerdown [0-60] ]
  [ -blength [0-2000] ]
  [ -bfreq freqnumber ]

  # ------------------ SMBclient ---------------
  
# --------------- Boolean Capabilities

Name    Termcap Description
        Equiv.

am      am      Has automatic margins
bw      bw      cub1 wraps from column 0 to last column
chts    HC      Cursor is hard to see
da      da      Display may be retained above screen
db      db      Display may be retained below screen
eo      eo      Can erase overstrikes with a blank
eslok   es      Using escape on status line is ok
gn      gn      Generic line type (e.g., dialup, switch)
hc      hc      Hardcopy terminal
hs      hs      Has a status line
hz      hz      Hazeltine; cannot print tildes
in      in      Insert mode distinguishes nulls
km      km      Has a meta key (a shift that sets parity bit)
mc5i    5i      Data sent to printer does not echo on screen
mir     mi      Safe to move while in insert mode
msgr    ms      Safe to move in standout modes
npc     NP      No pad character is needed
nrrmc   NR      smcup does not reverse rmcup
nxon    nx      Padding does not work; xon/xoff is required
os      os      Overstrikes
ul      ul      Underline character overstrikes
xenl    xn      Newline ignored after 80 columns (Concept)
xhp     xs      Standout is not erased by overwriting (HP)
xon     xo      Uses xon/xoff handshaking
xsb     xb      Beehive (f1=escape, f2=ctrl-c)
xt      xt      Tabs are destructive, magic smso (t1061)

# -------------- Numeric Capabilities

Name    Termcap Description
        Equiv.

cols    co      Number of columns in a line
it      it      Width of initial tab settings
lh      lh      Number of rows in each label
lines   li      Number of lines on screen or page
lm      lm      Lines of memory if > lines; 0 means varies
lw      lw      Number of columns in each label
nlab    Nl      Number of labels on screen (start at 1)
pb      pb      Lowest baud rate where padding is needed
vt      vt      Virtual terminal number (CB/Unix)
wsl     ws      Number of columns in status line
xmc     sg      Number of blanks left by smso' or `rmso'

# ----------------- String Capabilities

In the following table, `(P)' following an explanation means that the capability takes one or more parameters (and is evaluated by the tparam function, 
or in the case of `cup', tgoto); `(*)' means that padding may be based on the number of lines affected; and `#n' refers to the `n'th parameter.

Name    Termcap Description
        Equiv.

acsc    ac      Graphic character set pairs aAbBcC - default vt100
bel     bl      Ring bell (beep)
blink   mb      Begin blinking mode
bold    md      Begin double intensity mode
cbt     bt      Back tab
civis   vi      Make cursor invisible
clear   cl      Clear screen (*)
cmdch   CC      Settable command character in prototype
cnorm   ve      Make cursor normal (undo `cvvis' & `civis)'
cr      cr      Carriage return (*)
csr     cs      Change scrolling region to lines #1 through #2 (P)
cub     LE      Move cursor left #1 spaces (P)
cub1    le      Move cursor left one space
cud     DO      Move cursor down #1 lines (P*)
cud1    do      Move cursor down one line
cuf     RI      Move cursor right #1 spaces (P*)
cuf1    nd      Move cursor right one space
cup     cm      Move cursor to row #1, column #2 of screen (P)
cuu     UP      Move cursor up #1 lines (P*)
cuu1    up      Move cursor up one line
cvvis   vs      Make cursor very visible
dch     DC      Delete #1 characters (P*)
dch1    dc      Delete one character (*)
dim     mh      Begin half intensity mode
dl      DL      Delete #1 lines (P*)
dl1     dl      Delete one line (*)
dsl     ds      Disable status line
ech     ec      Erase #1 characters (P)
ed      cd      Clear to end of display (*)
el      ce      Clear to end of line
el1     cb      Clear to beginning of line, inclusive
enacs   eA      Enable alternate character set
ff      ff      Form feed for hardcopy terminal (*)
flash   vb      Visible bell (must not move cursor)
fsl     fs      Return from status line
hd      hd      Move cursor down one-half line
home    ho      Home cursor (if no `cup')
hpa     ch      Move cursor to column #1 (P)
ht      ta      Tab to next 8 space hardware tab stop
hts     st      Set a tab in all rows, current column
hu      hu      Move cursor up one-half line
ich     IC      Insert #1 blank characters (P*)
ich1    ic      Insert one blank character
if      if      Name of file containing initialization string
il      AL      Add #1 new blank lines (P*)
il1     al      Add one new blank line (*)
ind     sf      Scroll forward (up) one line
indn    SF      Scroll forward #1 lines (P)
invis   mk      Begin invisible text mode
ip      ip      Insert pad after character inserted (*)
iprog   iP      Path of program for initialization
is1     i1      Terminal initialization string
is2     is      Terminal initialization string
is3     i3      Terminal initialization string
kBEG    &9      Shifted beginning key
kCAN    &0      Shifted cancel key
kCMD    *1      Shifted command key
kCPY    *2      Shifted copy key
kCRT    *3      Shifted create key
kDC     *4      Shifted delete char key
kDL     *5      Shifted delete line key
kEND    *7      Shifted end key
kEOL    *8      Shifted clear line key
kEXT    *9      Shifted exit key
kFND    *0      Shifted find key
kHLP    #1      Shifted help key
kHOM    #2      Shifted home key
kIC     #3      Shifted input key
kLFT    #4      Shifted left arrow key
kMOV    %b      Shifted move key
kMSG    %a      Shifted message key
kNXT    %c      Shifted next key
kOPT    %d      Shifted options key
kPRT    %f      Shifted print key
kPRV    %e      Shifted prev key
kRDO    %g      Shifted redo key
kRES    %j      Shifted resume key
kRIT    %i      Shifted right arrow
kRPL    %h      Shifted replace key
kSAV    !1      Shifted save key
kSPD    !2      Shifted suspend key
kUND    !3      Shifted undo key
ka1     K1      Upper left of keypad
ka3     K3      Upper right of keypad
kb2     K2      Center of keypad
kbeg    @1      Beginning key
kbs     kb      Backspace key
kc1     K4      Lower left of keypad
kc3     K5      Lower right of keypad
kcan    @2      Cancel key
kcbt    kB      Back tab key
kclo    @3      Close key
kclr    kC      Clear screen or erase key
kcmd    @4      Command key
kcpy    @5      Copy key
kcrt    @6      Create key
kctab   kt      Clear tab key
kcub1   kl      Left arrow key
kcud1   kd      Down arrow key
kcuf1   kr      Right arrow key
kcuu1   ku      Up arrow key
kdch1   kD      Delete character key
kdl1    kL      Delete line key
ked     kS      Clear to end of screen key
kel     kE      Clear to end of line key
kend    @7      End key
kent    @8      Enter/send key (unreliable)
kext    @9      Exit key
kf0     k0      Function key f0
kf1     k1      Function key f1
kf10    k;      Function key f10
kf11    F1      Function key f11
kf12    F2      Function key f12
kf13    F3      Function key f13
kf14    F4      Function key f14
kf15    F5      Function key f15
kf16    F6      Function key f16
kf17    F7      Function key f17
kf18    F8      Function key f18
kf19    F9      Function key f19
kf2     k2      Function key f2
kf20    FA      Function key f20
kf21    FB      Function key f21
kf22    FC      Function key f22
kf23    FD      Function key f23
kf24    FE      Function key f24
kf25    FF      Function key f25
kf26    FG      Function key f26
kf27    FH      Function key f27
kf28    FI      Function key f28
kf29    FJ      Function key f29
kf3     k3      Function key f3
kf30    FK      Function key f30
kf31    FL      Function key f31
kf32    FM      Function key f32
kf33    FN      Function key f13
kf34    FO      Function key f34
kf35    FP      Function key f35
kf36    FQ      Function key f36
kf37    FR      Function key f37
kf38    FS      Function key f38
kf39    FT      Function key f39
kf4     k4      Function key f4
kf40    FU      Function key f40
kf41    FV      Function key f41
kf42    FW      Function key f42
kf43    FX      Function key f43
kf44    FY      Function key f44
kf45    FZ      Function key f45
kf46    Fa      Function key f46
kf47    Fb      Function key f47
kf48    Fc      Function key f48
kf49    Fd      Function key f49
kf5     k5      Function key f5
kf50    Fe      Function key f50
kf51    Ff      Function key f51
kf52    Fg      Function key f52
kf53    Fh      Function key f53
kf54    Fi      Function key f54
kf55    Fj      Function key f55
kf56    Fk      Function key f56
kf57    Fl      Function key f57
kf58    Fm      Function key f58
kf59    Fn      Function key f59
kf6     k6      Function key f6
kf60    Fo      Function key f60
kf61    Fp      Function key f61
kf62    Fq      Function key f62
kf63    Fr      Function key f63
kf7     k7      Function key f7
kf8     k8      Function key f8
kf9     k9      Function key f9
kfnd    @0      Find key
khlp    %1      Help key
khome   kh      Home key
khts    kT      Set tab key
kich1   kI      Ins char/enter ins mode key
kil1    kA      Insert line key
kind    kF      Scroll forward/down key
kll     kH      Home down key
kmov    %4      Move key
kmrk    %2      Mark key
kmsg    %3      Message key
knp     kN      Next page key
knxt    %5      Next object key
kopn    %6      Open key
kopt    %7      Options key
kpp     kP      Previous page key
kprt    %9      Print or copy key
kprv    %8      Previous object key
krdo    %0      Redo key
kref    &1      Reference key
kres    &5      Resume key
krfr    &2      Refresh key
kri     kR      Scroll backward/up key
krmir   kM      rmir or smir in insert mode
krpl    &3      Replace key
krst    &4      Restart key
ksav    &6      Save key
kslt    *6      Select key
kspd    &7      Suspend key
ktbc    ka      Clear all tabs key
kund    &8      Undo key
lf0     l0      Label on function key f0 if not `f0'
lf1     l1      Label on function key f1 if not `f1'
lf10    la      Label on function key f10 if not `f10'
lf2     l2      Label on function key f2 if not `f2'
lf3     l3      Label on function key f3 if not `f3'
lf4     l4      Label on function key f4 if not `f4'
lf5     l5      Label on function key f5 if not `f5'
lf6     l6      Label on function key f6 if not `f6'
lf7     l7      Label on function key f7 if not `f7'
lf8     l8      Label on function key f8 if not `f8'
lf9     l9      Label on function key f9 if not `f9'
ll      ll      Go to last line, first column (if no `cup')
mc0     ps      Print screen contents
mc4     pf      Turn printer off
mc5     po      Turn printer on
mc5p    pO      Turn printer on for #1 bytes (P)
mgc     MC      Clear left and right soft margins
mrcup   CM      Move cursor to row #1, column #2 of memory (P)
nel     nw      Newline (like cr followed by lf)
pad     pc      Pad character (rather than nul)
pfkey   pk      Program function key #1 to type string #2 (P)
pfloc   pl      Program function key #1 to execute string #2 (P)
pfx     px      Program function key #1 to transmit string #2 (P)
pln     pn      Program label #1 to show string #2 (P)
prot    mp      Begin protected mode
rc      rc      Restore cursor to position of last `sc'
rep     rp      Repeat character #1, #2 times (P*)
rev     mr      Begin reverse video mode
rf      rf      Name of file containing reset string
rfi     RF      Send next input character (for ptys)
ri      sr      Scroll backward (down) one line
rin     SR      Scroll backward #1 lines (P)
rmacs   ae      End alternate character set
rmam    RA      Turn off automatic margins
rmcup   te      String to end programs that use `cup'
rmdc    ed      End delete mode
rmir    ei      End insert mode
rmkx    ke      End keypad transmit mode
rmln    LF      Turn off soft labels
rmm     mo      End meta mode
rmp     rP      Like `ip' but when in replace mode
rmso    se      End standout mode
rmul    ue      End underscore mode
rmxon   RX      Turn off xon/xoff handshaking
rs1     r1      Reset terminal to sane modes
rs2     r2      Reset terminal to sane modes
rs3     r3      Reset terminal to sane modes
sc      sc      Save cursor position
sgr     sa      Define video attributes #1 through #9 (P)
sgr0    me      Turn off all attributes
smacs   as      Begin alternate character set
smam    SA      Turn on automatic margins
smcup   ti      String to begin programs that use `cup'
smdc    dm      Begin delete mode
smgl    ML      Set soft left margin to #1 (P)
smgr    MR      Set soft right margin to #1 (P)
smir    im      Begin insert mode
smkx    ks      Begin keypad transmit mode
smln    LO      Turn on soft labels
smm     mm      Begin meta mode (8th bit set)
smso    so      Begin standout mode
smul    us      Begin underscore mode
smxon   SX      Turn on xon/xoff handshaking
tbc     ct      Clear all tab stops
tsl     ts      Go to status line, column #1 (P)
uc      uc      Underscore one character and move past it
vpa     cv      Move cursor to row #1 (P)
wind    wi      Set window to lines #1-#2, columns #3-#4 (P)
xoffc   XF      xoff character
xonc    XN      xon character

# ------------------ Error Messages

tput displays various error messages if problems occur. In addition, it exits with one of the following status values:

0	Normal status; the given capability is present.
1	The given Boolean or string capability is not present.
2	Usage error; tput was given invalid arguments.
3	The terminal type given (either in the TERM environment variable or by the -T switch) is unknown, or the termcap database can not be read.
4	The given capability is unknown.
}

${ANSI / ESC Code}
{
http://ascii-table.com/index.php
http://wiki.bash-hackers.org/scripting/terminalcodes
http://wiki.bash-hackers.org/scripting/terminalcodes

NONE='\033[00m'
RED='\033[01;31m'
GREEN='\033[01;32m'
YELLOW='\033[01;33m'
PURPLE='\033[01;35m'
CYAN='\033[01;36m'
WHITE='\033[01;37m'
BOLD='\033[1m'
UNDERLINE='\033[4m'

echo -e "\x1b[1m bold"
echo -e "\x1b[30m black"
echo -e "\x1b[31m red"
echo -e "\x1b[32m green"
echo -e "\x1b[33m yellow"
echo -e "\x1b[34m blue"
echo -e "\x1b[35m mag"
echo -e "\x1b[36m cyan"
echo -e "\x1b[37m white"   

echo -e "\x1b[0m io-std"
echo -e "\x1b[1m bold"
echo -e "\x1b[2m normal"

echo -e "\x1b[4m underlined"
echo -e "\x1b[5m blinking"
echo -e "\x1b[7m inverted"

echo -e "\x1b[30;44m black with blue background \x1b[m"
echo -e "\x1b[31;42m red with green background \x1b[m"
echo -e "\x1b[32;40m green with black background \x1b[m"
echo -e "\x1b[8m Invisible; na na na na boo boo \x1b[m"

# General useful ASCII codes
Name	decimal	octal	hex		C-escape	Ctrl-Key	Description
BEL		7		007		0x07	\a			^G			Terminal bell
BS		8		010		0x08	\b			^H			Backspace
HT		9		011		0x09	\t			^I			Horizontal TAB
LF		10		012		0x0A	\n			^J			Linefeed (newline)
VT		11		013		0x0B	\v			^K			Vertical TAB
FF		12		014		0x0C	\f			^L			Formfeed (also: New page NP)
CR		13		015		0x0D	\r			^M			Carriage return
ESC		27		033		0x1B	<none>		^[			Escape character
DEL		127		177		0x7F	<none>		<none>		Delete character

cup <row> <col> 
clear
cols
lines
hc
colors

# Cursor handling
ANSI			terminfo equivalent		Description
[ <X> ; <Y> H							Home-positioning to X and Y coordinates 
[ <X> ; <Y> f	cup <X> <Y>				it seems that ANSI uses 1-1 as home while tput uses 0-0									
[ H				home					Move cursor to home position (0-0)
7				sc						Save current cursor position
8				rc						Restore saved cursor position
most likely a normal code like \b	cub1	move left one space (backspace)
VT100 [ ? 25 l	civis					make cursor invisible
VT100 [ ? 25 h	cvvis					make cursor visible

Erasing text
ANSI	terminfo equivalent		Description
[ K
[ 0 K	el						Clear line from current cursor position to end of line
[ 1 K	el1						Clear line from beginning to current cursor position
[ 2 K	el2						Clear whole line (cursor position unchanged)

General text attributes
ANSI	terminfo equivalent		Description
[ 0 m	sgr0					Reset all attributes
[ 1 m	bold					Set "bright" attribute
[ 2 m	dim						Set "dim" attribute
[ 3 m	smso					Set "standout" attribute
[ 4 m	set smul unset rmul		Set "underscore" (underlined text) attribute
[ 5 m	blink					Set "blink" attribute
[ 7 m	rev						Set "reverse" attribute
[ 8 m	invis					Set "hidden" attribute

Foreground coloring
ANSI		terminfo equivalent	Description
[ 3 0 m		setaf 0				Set foreground to color #0 - black
[ 3 1 m		setaf 1				Set foreground to color #1 - red
[ 3 2 m		setaf 2				Set foreground to color #2 - green
[ 3 3 m		setaf 3				Set foreground to color #3 - yellow
[ 3 4 m		setaf 4				Set foreground to color #4 - blue
[ 3 5 m		setaf 5				Set foreground to color #5 - magenta
[ 3 6 m		setaf 6				Set foreground to color #6 - cyan
[ 3 7 m		setaf 7				Set foreground to color #7 - white
[ 3 9 m		setaf 9				Set default color as foreground color

Background coloring
ANSI		terminfo equivalent	Description
[ 4 0 m		setab 0				Set background to color #0 - black
[ 4 1 m		setab 1				Set background to color #1 - red
[ 4 2 m		setab 2				Set background to color #2 - green
[ 4 3 m		setab 3				Set background to color #3 - yellow
[ 4 4 m		setab 4				Set background to color #4 - blue
[ 4 5 m		setab 5				Set background to color #5 - magenta
[ 4 6 m		setab 6				Set background to color #6 - cyan
[ 4 7 m		setab 7				Set background to color #7 - white
[ 4 9 m		setaf 9				Set default color as background color

## Font attributes ##
# off
off = '\x1b[0m' # off
default = '\x1b[39m' # default foreground
DEFAULT = '\x1b[49m' # default background

bd = '\x1b[1m' # bold
ft = '\x1b[2m' # faint
st = '\x1b[3m' # standout
ul = '\x1b[4m' # underlined
bk = '\x1b[5m' # blink
rv = '\x1b[7m' # reverse
hd = '\x1b[8m' # hidden
nost = '\x1b[23m' # no standout
noul = '\x1b[24m' # no underlined
nobk = '\x1b[25m' # no blink
norv = '\x1b[27m' # no reverse

# colors
black = '\x1b[30m'
BLACK = '\x1b[40m'
red = '\x1b[31m'
RED = '\x1b[41m'
green = '\x1b[32m'
GREEN = '\x1b[42m'
yellow = '\x1b[33m'
YELLOW = '\x1b[43m'
blue = '\x1b[34m'
BLUE = '\x1b[44m'
magenta = '\x1b[35m'
MAGENTA = '\x1b[45m'
cyan = '\x1b[36m'
CYAN = '\x1b[46m'
white = '\x1b[37m'
WHITE = '\x1b[47m'
# light colors
dgray = '\x1b[90m'
DGRAY = '\x1b[100m'
lred = '\x1b[91m'
LRED = '\x1b[101m'
lgreen = '\x1b[92m'
LGREEN = '\x1b[102m'
lyellow = '\x1b[93m'
LYELLOW = '\x1b[103m'
lblue = '\x1b[94m'
LBLUE = '\x1b[104m'
lmagenta = '\x1b[95m'
LMAGENTA = '\x1b[105m'
lcyan = '\x1b[96m'
LCYAN = '\x1b[106m'
lgray = '\x1b[97m'
LGRAY = '\x1b[107m'

## 256 colors ##
# \x1b[38;5;#m foreground, # = 0 - 255
# \x1b[48;5;#m background, # = 0 - 255
## True Color ##
# \x1b[38;2;r;g;bm r = red, g = green, b = blue foreground
# \x1b[48;2;r;g;bm r = red, g = green, b = blue background

# Color Customization:
blue="\033[0;34m"
brightblue="\033[1;34m"
cyan="\033[0;36m"
brightcyan="\033[1;36m"
green="\033[0;32m"
brightgreen="\033[1;32m"
red="\033[0;31m"
brightred="\033[1;31m"
white="\033[1;37m"
black="\033[0;30m"
grey="\033[0;37m"
darkgrey="\033[1;30m"

}

${Shell Coding}
{
sh
sh --help

These shell commands are defined internally.  Type `help' to see this list.
Type `help name' to find out more about the function `name'.
Use `info bash' to find out more about the shell in general.
Use `man -k' or `info' to find out more about commands not in this list.

A star (*) next to a name means that the command is disabled.

 job_spec [&]                                                history [-c] [-d offset] [n] or history -anrw [filename]>
 (( expression ))                                            if COMMANDS; then COMMANDS; [ elif COMMANDS; then COMMAN>
 . filename [arguments]                                      jobs [-lnprs] [jobspec ...] or jobs -x command [args]
 : do not execute command                                    kill [-s sigspec | -n signum | -sigspec] pid | jobspec .>
 [ arg... ]                                                  let arg [arg ...]
 [[ expression ]]                                            local [option] name[=value] ...
 alias [-p] [name[=value] ... ]                              logout [n]
 bg [job_spec ...]                                           mapfile [-n count] [-O origin] [-s count] [-t] [-u fd] [>
 bind [-lpvsPVS] [-m keymap] [-f filename] [-q name] [-u n>  popd [-n] [+N | -N]
 break [n]                                                   printf [-v var] format [arguments]
 builtin [shell-builtin [arg ...]]                           pushd [-n] [+N | -N | dir]
 caller [expr]                                               pwd [-LP]
 case WORD in [PATTERN [| PATTERN]...) COMMANDS ;;]... esa>  read [-ers] [-a array] [-d delim] [-i text] [-n nchars] >
 cd [-L|-P] [dir]                                            readarray [-n count] [-O origin] [-s count] [-t] [-u fd]>
 command [-pVv] command [arg ...]                            readonly [-af] [name[=value] ...] or readonly -p
 compgen [-abcdefgjksuv] [-o option]  [-A action] [-G glob>  return [n]
 complete [-abcdefgjksuv] [-pr] [-DE] [-o option] [-A acti>  select NAME [in WORDS ... ;] do COMMANDS; done
 compopt [-o|+o option] [-DE] [name ...]                     set [--abefhkmnptuvxBCHP] [-o option-name] [arg ...]
 continue [n]                                                shift [n]
 coproc [NAME] command [redirections]                        shopt [-pqsu] [-o] [optname ...]
 declare [-aAfFilrtux] [-p] [name[=value] ...]               source filename [arguments]
 dirs [-clpv] [+N] [-N]                                      suspend [-f]
 disown [-h] [-ar] [jobspec ...]                             test [expr]
 echo [-neE] [arg ...]                                       time [-p] pipeline
 enable [-a] [-dnps] [-f filename] [name ...]                times
 eval [arg ...]                                              trap [-lp] [[arg] signal_spec ...]
 exec [-cl] [-a name] [command [arguments ...]] [redirecti>  true
 exit [n]                                                    type [-afptP] name [name ...]
 export [-fn] [name[=value] ...] or export -p                typeset [-aAfFilrtux] [-p] name[=value] ...
 false                                                       ulimit [-SHacdefilmnpqrstuvx] [limit]
 fc [-e ename] [-lnr] [first] [last] or fc -s [pat=rep] [c>  umask [-p] [-S] [mode]
 fg [job_spec]                                               unalias [-a] name [name ...]
 for NAME [in WORDS ... ] ; do COMMANDS; done                unset [-f] [-v] [name ...]
 for (( exp1; exp2; exp3 )); do COMMANDS; done               until COMMANDS; do COMMANDS; done
 function name { COMMANDS ; } or name () { COMMANDS ; }      variables - Names and meanings of some shell variables
 getopts optstring name [arg]                                wait [id]
 hash [-lr] [-p pathname] [-dt] [name ...]                   while COMMANDS; do COMMANDS; done
 help [-dms] [pattern ...]                                   { COMMANDS ; }
 `
}

${SCRIPT DEBUGGING}
{
# Path of script
Add sh scripts to ~/bin to auto running: echo $PATH
# Make script ececutable
Make executable: chmod +x <script.sh> user: chmod u+x
 # Shell Debugging, bash builtin simple debugging 
 sh -x or bash -x
 sh -x myScript
}

${Code Snippets}
{
echo "Running a report...."
    countA=0
    countB=0
    while read -r line; do

        echo $line
        if [[ $line == "Not A Finding" ]] ; then countA=$((countA+1)) ; else echo ; fi
        if [[ $line == "Finding" ]] ; then countB=$((countB+1)) ; else echo ; fi
    done < scan.log
        echo "Findings:      ${countB}"
        echo "Not A Finding: ${countA}"

# --------- Toolbar Menu -----------
Step-by-step:

save the current cursor position
find the number of lines on the screen
compute the last line-number (above) which you want to leave as-is
write the control sequence for setting the scrolling margins just past that line, through the end of the screen
move the cursor to the last line (of the screen and the scrolling region)
send control sequence (or line-feeds, etc), to force the scrolling region to "index" upward
unset the scrolling margins
restore the cursor position
In a script, you can do most of this with tput, e.g.,

tput sc 				to save the cursor position
tput csr first last		to set the scrolling regions to the first/last lines
tput cup last 0, 		to move the cursor to the last line in the scrolling region (using the same last value as in the csr command)
tput ind 				to index-up once, or tput indncount, to index up by count lines.
tput rc 				to restore the cursor position
tput cuu line			move up number of line(s)
tput cud line			move down number of line(s)
tput cuf col			move right number of space(s)
tput cub col			move left number of space(s)
tput home				move to 0,0
tput cr					
tput hpa _ 				# go to column
tput vpa _ 				# go to row
tput ri, rin _ # "scroll back" i.e. move up _ lines, while discarding bottom _ lines of output (even if you're not there) (ri=\EM, rin=\E[_T, rin 1 works better than ri)
tput ind (^J, it's ignored), indn _ # "scroll forward" i.e. move down _ lines, but doesn't restore lines deleted by scrolling back (indn=\E[_S)

tput ech _ #  erase ahead _ chars (overwrites with current bg color) (ech=\E[_X)
    tput el # clear to end of line, stay here (el=\E[K, also \e[0K)
    tput el1 # clear to start of line, stay here (el1=\E[1K)
        \e[2K clears whole line
    tput ed # clear to end of screen, stay here (ed=\E[J, also \e[0J)
        \e[1J clears screen before cursor
        \e[2J clears whole screen
tput ich1, ich _ # insert ahead _ chars (using current bg color) (ich,ich1=\E[_@)
tput il1, il _ # insert _ lines (scroll the line you're currently writing down _, discarding bottom _ lines of output, cursor goes to top of newly-scrolled region
                 this differs from ri/rin in that it inserts blank lines) (il,il1=\E[_L)
tput dch1, dch _ # delete ahead _ chars (dch,dch1=\E[_P)
tput dl1, dl _ # delete _ lines, including \n, stay this column (dl,dl1=\E[_M)

COLORS AND ATTRIBUTES
tput bold (\E[1m)
tput sitm/ritm   # italics (\E[3m \E[23m)
tput smul/rmul      # underline (\E[4m \E[24m)
tput blink # blinks and bold bg (\E[5m, rapid blink is 6)
tput rev, smso/rmso      # standout (\E[7m \E[27m)
    attrib 8=invis is not implemented
    attrib 2=? is not implemented
tput op # use default colors (op=\E[39;49m)
Colors:
    0 black, 1 red, 2 green, 3 yellow, 4 blue, 5 magenta, 6 cyan, 7 white, 9 default
    3_ fg, 4_ bg
    3_;1 may use bright fg, as does 9_
    49;5 and 49;6 blink
    other 4_;5 and 4_;6 use bold/bright bg, as does 10_
    38;5;_ fg to color0-255
    48;5;_ bg to color0-255
tput sgr0 # clear all attributes (sgr0=\E[m\017)

\e8 seems to restore attributes and colors as well as position
\e[?7h,\e[?7l seems to reset attributes and colors

\e[?XXYY        where YY=s to save, r to restore, h to set, l to clear, t to toggle
                and XX=5 whole terminal reverse video (used by flash)
                    XX=6 write from 0,0
                    XX=7 do wrap to next line (smam=\e[?7h, rmam=\e[?7l)
                    XX=25 cursor is visible (cnorm/cvvis=\e[?25h, civis=\e[?25l)
                    XX=47 use alternate buffer
                    XX=1047 use alternate buffer, clear when returning from it
                    XX=1048 save cursor on set, restore on clear
                    XX=1049 use alternatr buffer, clear on switching to it (smcup=\e[?1049h, rmcup=\e[r\e[?1049l)


write in "status line"/xterm title:
    tput dsl # delete it (\E]2;\007)
    tput tsl # to status line (\E]2)
    tput fsl # from status line to main window (^G)
"\e]XX;YY\e\\" sets xterm parameters, where XX;YY=
                0;text    set icon name and window title to text
                1;text    set icon name only
                2;text    set window title only
                10;color or index    change terminal fg to color
                11;color or index    change terminal bg to color
                12;color or index    change cursor fg to color
                13;color or index    change pointer fg to color
                17;color or index    change highlight to color
                706;color or index    change bold to color
                707;color or index    change underlined chars to color
                704:color or index    change italics to color
                50 or 710;font        change normal fontset
                711;font            change bold fontset
                712;font            change italics fontset
                713;font            change boldItalics fontset
                720 or 721;0        clear scrollback buffer
                777;extension:parameters    call perl extension



\eD                index (not in terminfo)
The commands (csr, etc.) are terminal capabilities and can differ from one terminal to another.

tput cup 18 8
tput rev
tput setaf 3
echo "       Open | Not A Finding | Not Applicable | Manual Checking "
#tput sgr0
tput cup 19 8
echo "CAT-1"
tput cup 20 8
echo "CAT-2"
tput cup 21 8
echo "CAT-3"
tput sgr0

}
