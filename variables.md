1. Setting the value for a varaible
Note there is no space on either side of the equals ( = ) sign. We also leave off the $ sign from the beginning of the variable name when setting it.
Variable names may be uppercase or lowercase or a mixture of both but Bash is a case sensitive environment so whenever you refer to a variable you must be consistent in your use of uppercase and lowercase letters. 
You should always make sure variable names are descriptive. This makes their purpose easier for you to remember.

```
#!/bin/sh
  2 var1=14
  3 var2="Hello World!"
  4 echo $var1 + $var2
  5 
  6 echo "Enter a number:"
  7 read num
  8 echo "YOU ENtered $num"
  9 # echo $num*100
 10 
 11 k=HI
 12 echo $k

OUtput:
ark-ubuntu-linux-2% source ~/Desktop/shell_script.sh
14 + Hello World!
Enter a number:
33
YOU ENtered 33
/home/ark/Desktop/shell_script.sh:8: no matches found: 33*100
HI
```

2. Comand substitution
Command substitution allows us to take the output of a command or program (what would normally be printed to the screen) and save it as the value of a variable. To do this we place it within brackets, preceded by a $ sign.

```
variable=$( command )
Save the output of a command into a variable
```

Eg.
```
ark-ubuntu-linux-2% dir_name=$(pwd)
ark-ubuntu-linux-2% echo $dir_name 
/home/ark/Desktop
ark-ubuntu-linux-2% ls $dir_name 
 finalcn-p2
 notes.txt
 shell_script.sh
 web_ark_beta
```
and

```
ark-ubuntu-linux-2% var=$(ls | wc -l)
ark-ubuntu-linux-2% echo $var
9
```


3. Special Variables

There are a few other variables that the system sets for you to use as well.

$0 - The name of the Bash script.
$1 - $9 - The first 9 input arguments to the Bash script. (As mentioned above.)
$# - How many arguments were passed to the Bash script.
$@ - All the arguments supplied to the Bash script.
$? - The exit status of the most recently run process.
$$ - The process ID of the current script.
$USER - The username of the user running the script.
$HOSTNAME - The hostname of the machine the script is running on.
$SECONDS - The number of seconds since the script was started.
$RANDOM - Returns a different random number each time is it referred to.
$LINENO - Returns the current line number in the Bash script.


LInk for basics with exporting variables, setting vars, special vars: https://ryanstutorials.net/bash-scripting-tutorial/bash-variables.php

