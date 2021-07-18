# Linux101

---

#### Network Commands

```
curl ifconfig.me          [Provides your Public IP address like 96.143.22.333]
> ifconfig          > ip a  Gives you your private/public IP address from the network cards in your device
```
Remember if you are on a LAN, there is a central router that routes traffic to you. 
Network Address Translation(NAT) allows a single device, such as a router, to act as an agent between the Internet (or public network) and a local network (or private network), which means that only a single unique IP address is required to represent an entire group of computers to anything outside their network.
IP like 96.143.22.333 is the one that everyone sees on the outside, you are allocated a private address inside your LAN
Based on that private IP traffic is routed to you from the internet



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
