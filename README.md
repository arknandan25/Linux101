# Linux101


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
