# Linux101


#### Network Commands

```
curl ifconfig.me          [Provides your Public IP address like 96.143.22.333]
> ifconfig          > ip a  Gives you your private/public IP address from the network cards in your device
```
Remember if you are on a LAN, there is a central router that routes traffic to you. 
Network Address Translation(NAT) allows a single device, such as a router, to act as an agent between the Internet (or public network) and a local network (or private network), which means that only a single unique IP address is required to represent an entire group of computers to anything outside their network.
IP like 96.143.22.333 is the one that everyone sees on the outside, you are allocated a private address inside your LAN
Based on that private IP traffic is routed to you from the internet

#### find: Find a dir/file exist in a dir

```
find . -name <name of file/dir to search>         [. means current dir]
find . -name "*.php"       [Search for all files with .php extension]
```

If file exist in that dir it will be shown else no o/p

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
