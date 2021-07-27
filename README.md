# Linux101

---

### About Bash
 * Some of the programs we use like rm, grep, ls are separate software that donot depend on bash.
 * Bash includes built-in commands that are part of bash, while there are commands not built-in but with same name.
 * Look at some examples:

```
(base) arkchauhan@Arks-MacBook-Pro / % echo This is it
This is it
(base) arkchauhan@Arks-MacBook-Pro / % printf This is it
This%
(base) arkchauhan@Arks-MacBook-Pro / % printf "This is it"
This is it%
(base) arkchauhan@Arks-MacBook-Pro / % printf("This is it")
zsh: unknown file attribute: h
```
```
# The built-in and command version of echo, enable and disable the built-in verison
# FYI some of these doon't work on Mac zsh
(base) arkchauhan@Arks-MacBook-Pro ~ % command -V echo
echo is a shell builtin
(base) arkchauhan@Arks-MacBook-Pro ~ %
(base) arkchauhan@Arks-MacBook-Pro ~ % enable -n echo
enable: bad option: -n
```


 * ~ is called the Tilde exopansion and represents the current user's $HOME environment variable.
```
(base) arkchauhan@Arks-MacBook-Pro ~ % echo ~
/Users/arkchauhan
(base) arkchauhan@Arks-MacBook-Pro ~ % pwd
/Users/arkchauhan
(base) arkchauhan@Arks-MacBook-Pro ~ % echo ~-          # gives the directory name you were in prior to switching to the current one
/

(base) arkchauhan@Arks-MacBook-Pro ~ % echo $HOME
/Users/arkchauhan
(base) arkchauhan@Arks-MacBook-Pro ~ % echo $HOME > creds.txt       # copy the content of the $HOME environment variable to a file named creds.txt
(base) arkchauhan@Arks-MacBook-Pro ~ % ls
4E1 Exam Paper 2020-21_final (1).docx	Pictures
AndroidStudioProjects			Postman Agent
Applications				Public
Desktop					arkchauhan
Documents				creds.txt
Downloads				ejabberd
Library					lab1.js
Movies					lauda.txt
Music					opt
(base) arkchauhan@Arks-MacBook-Pro ~ % cat creds.txt
/Users/arkchauhan
```

 * Brace expansion- Used to create sets, ranges; specifically used for geenrating file/directory names : {a, b, c} or {1..10..3}. 
 * Working examples below:
```
(base) arkchauhan@Arks-MacBook-Pro ~ % echo {1..10..2}
1 3 5 7 9
(base) arkchauhan@Arks-MacBook-Pro ~ % echo {a..z}
a b c d e f g h i j k l m n o p q r s t u v w x y z
(base) arkchauhan@Arks-MacBook-Pro ~ % echo {Z..a}
Z [ \ ] ^ _ ` a
(base) arkchauhan@Arks-MacBook-Pro ~ % echo {Z..A}
Z Y X W V U T S R Q P O N M L K J I H G F E D C B A
(base) arkchauhan@Arks-MacBook-Pro ~ % echo {001..100}
001 002 003 004 005 006 007 008 009 010 011 012 013 014 015 016 017 018 019 020 021 022 023 024 025 026 027 028 029 030 031 032 033 034 035 036 037 038 039 040 041 042 043 044 045 046 047 048 049 050 051 052 053 054 055 056 057 058 059 060 061 062 063 064 065 066 067 068 069 070 071 072 073 074 075 076 077 078 079 080 081 082 083 084 085 086 087 088 089 090 091 092 093 094 095 096 097 098 099 100
(base) arkchauhan@Arks-MacBook-Pro ~ % pwd
/Users/arkchauhan
(base) arkchauhan@Arks-MacBook-Pro ~ % mkdir test
(base) arkchauhan@Arks-MacBook-Pro ~ % cd test
(base) arkchauhan@Arks-MacBook-Pro test % touch file_{01..30}
(base) arkchauhan@Arks-MacBook-Pro test % ls
file_01	file_04	file_07	file_10	file_13	file_16	file_19	file_22	file_25	file_28
file_02	file_05	file_08	file_11	file_14	file_17	file_20	file_23	file_26	file_29
file_03	file_06	file_09	file_12	file_15	file_18	file_21	file_24	file_27	file_30

(base) arkchauhan@Arks-MacBook-Pro test % touch ark_file{1..5}{a..z}
(base) arkchauhan@Arks-MacBook-Pro test % ls ark_file*
ark_file1a	ark_file1w	ark_file2s	ark_file3o	ark_file4k	ark_file5g
ark_file1b	ark_file1x	ark_file2t	ark_file3p	ark_file4l	ark_file5h
ark_file1c	ark_file1y	ark_file2u	ark_file3q	ark_file4m	ark_file5i
ark_file1d	ark_file1z	ark_file2v	ark_file3r	ark_file4n	ark_file5j
ark_file1e	ark_file2a	ark_file2w	ark_file3s	ark_file4o	ark_file5k
ark_file1f	ark_file2b	ark_file2x	ark_file3t	ark_file4p	ark_file5l
ark_file1g	ark_file2c	ark_file2y	ark_file3u	ark_file4q	ark_file5m
ark_file1h	ark_file2d	ark_file2z	ark_file3v	ark_file4r	ark_file5n
ark_file1i	ark_file2e	ark_file3a	ark_file3w	ark_file4s	ark_file5o
ark_file1j	ark_file2f	ark_file3b	ark_file3x	ark_file4t	ark_file5p
ark_file1k	ark_file2g	ark_file3c	ark_file3y	ark_file4u	ark_file5q
ark_file1l	ark_file2h	ark_file3d	ark_file3z	ark_file4v	ark_file5r
ark_file1m	ark_file2i	ark_file3e	ark_file4a	ark_file4w	ark_file5s
ark_file1n	ark_file2j	ark_file3f	ark_file4b	ark_file4x	ark_file5t
ark_file1o	ark_file2k	ark_file3g	ark_file4c	ark_file4y	ark_file5u
ark_file1p	ark_file2l	ark_file3h	ark_file4d	ark_file4z	ark_file5v
ark_file1q	ark_file2m	ark_file3i	ark_file4e	ark_file5a	ark_file5w
ark_file1r	ark_file2n	ark_file3j	ark_file4f	ark_file5b	ark_file5x
ark_file1s	ark_file2o	ark_file3k	ark_file4g	ark_file5c	ark_file5y
ark_file1t	ark_file2p	ark_file3l	ark_file4h	ark_file5d	ark_file5z
ark_file1u	ark_file2q	ark_file3m	ark_file4i	ark_file5e
ark_file1v	ark_file2r	ark_file3n	ark_file4j	ark_file5f
```

![#f03c15](https://via.placeholder.com/15/f03c15/000000?text=+) Parameter Expansion - retrieve and transforms stored values: ${..} or $var_name to retieve the variable's value.









---

#### find: Find a dir/file exist in a dir

```
find . -name <name of file/dir to search>         [. means current dir]
find . -name "*.php"       [Search for all files with .php extension]
```

If file exist in that dir it will be shown else no o/p

---

#### Linux for everyday
```
Check if a file exists: > ls -l <name of the file>

Create a new file: > touch <filename>

Move a file to a specific directory:  > mv filename /path/of/address/to/move/file

Find your shell: > echo $0

Make a dir in a particular parent dir: > mkdir -p <path/path of dir>

Unzip tar/zipped directories: > tar xvf <name of the tarball>     will extract all the files
List the files inside a tarball:  > tar tf <Tarball name>
* Create a tarball, append in an existing one, many more: https://www.fosslinux.com/34665/15-tar-command-in-linux-uses-with-examples.htm
```

Find the current logged in User
```
> echo $USER
> whoami
> id -un        // gives the name of all the users
> id -u         // gives the UID for the current user
```


The Pipe is a command in Linux that lets you use two or more commands such that output of one command serves as input to the next. In short, the output of each process directly as input to the next one like a pipeline. The symbol '|' denotes a pipe.
**Pipe with cat:**
```
cat lauda.txt | less  show less data i.e view from start
cat lauda.txt | more
Press q to exit

```

**Pipe with grep**
You may manually skim the content yourself to trace the information. A better option is to use the grep command. It will scan the document for the desired information and present the result in a format you want.
Syntax: grep search_string
-v	Shows all the lines that do not match the searched string
-c	Displays only the count of matching lines
-n	Shows the matching line and its number
-i	Match both (upper and lower) case
-l	Shows just the name of the file with the string

```
cat lauda.txt | grep Lorem   would just give the lines where your string matched
cat lauda.txt | grep -v Lorem 
cat lauda.txt | grep -vn Lorem
**cat lauda.txt | grep -n "Lorem" **
cat lauda.txt | grep -i "LoRem"
cat lauda.txt | grep -ic "LoRem"
```

---


#### Encrypting pdfs

```
brew install qpdf
qpdf --encrypt abc abc 40  -- cf_unecrypted.pdf cf_encrypted.pdf
qpdf --password=abc --decrypt doc_with_pass.pdf doc_without_pass2.pdf
```
Note that abc is both user and owner password here and key length is 40. 
cf_encrypted is the new encrypted file.
This will create doc_without_pass2.pdf file which should open without a password.

---

#### Mac specific stuff
```
cmd+shift+. to view hidden files in a directory
cmd+shift+h to view home directory
```

---

#### Vim Linux Editor
```
vi file_name_to_open
when opened you are in command mode, press i for goig to insert mode and add data
press esc to exit to command mode

When in command mode:
> take cursor to specific line and press dd to delete that line
> 10dd - delete 10 lines from the cursor's current position
> :89,91d - delete data from lines 89 to 91
> :89d - delete line 89
> dG - delete entire file
Adding line numbers to VIM:
> :set number
> :set nonumber

> Got to specific line (line 50) on vim- :50

> :w - save changes
> :q - exit file
> :wq - save and exit file
> :q! - quit but donot save changes
> :w! - force save changes to file
```
Vim Cheat Sheet - https://www.thegeekdiary.com/basic-vi-commands-cheat-sheet/


---

#### SSH Forwarding Agent
SSH agent forwarding allows you to use your private, local SSH key remotely without worrying about leaving confidential data on the server you're working with. It's built into ssh , and is easy to set up and use.

* Good visual understanding of SSH forwarding agent: http://www.unixwiz.net/techtips/ssh-agent-forwarding.html#:~:text=issues-,public%20key%20access%20with%20agent%20forwarding,-With
* Highlighted text shows the basic use of a forwarding agent and the -A switch: https://dev.to/levivm/how-to-use-ssh-and-ssh-agent-forwarding-more-secure-ssh-2c32#:~:text=There%20is%20a,your%20local%20machine

---

#### Permisisons In Linux/Unix File System
* Understanding the basics of permissions: https://its.unc.edu/research-computing/techdocs/how-to-use-unix-and-linux-file-permissions/#:~:text=Column%20Value%20Permissions,execute%20%20rwx
* Understanding the (u, g, o, a, +, -, =) with ```chmod``` : https://linuxize.com/post/chmod-command-in-linux/#:~:text=users%20class-,When%20setting%20permissions%20for%20more,bit%20to%20a%20given%20directory,-chmod%20o%2Bt

The chown command allows you to change the user and/or group ownership of a given file, directory, or symbolic link. Link to chown article:https://linuxize.com/post/linux-chown-command/


#### Network Commands

```
curl ifconfig.me          [Provides your Public IP address like 96.143.22.333]
> ifconfig          > ip a  Gives you your private/public IP address from the network cards in your device
```
Remember if you are on a LAN, there is a central router that routes traffic to you. 
Network Address Translation(NAT) allows a single device, such as a router, to act as an agent between the Internet (or public network) and a local network (or private network), which means that only a single unique IP address is required to represent an entire group of computers to anything outside their network.
IP like 96.143.22.333 is the one that everyone sees on the outside, you are allocated a private address inside your LAN
Based on that private IP traffic is routed to you from the internet

---

##### Wireshark
```
How to install wireshark on Linux:

sudo apt-get install wireshark
>>Allow sub user access to capture packets
sudo addgroup -system wireshark
>>addgroup: The group `wireshark' already exists as a system group. Exiting.
sudo chown root:wireshark /usr/bin/dumpcap
sudo setcap cap_net_raw,cap_net_admin=eip /usr/bin/dumpcap
sudo usermod -a -G wireshark ark

```
Installation tutorial:https://www.youtube.com/watch?v=GCpl01pqKmA

Basic tutorial for wireshark: https://www.youtube.com/watch?v=lb1Dw0elw0Q&pbjreload=101

---
