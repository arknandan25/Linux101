: '

This script:
* For loop
* Expressions
* String Manipulation
'

# Table of 5
const=5
for (( i=1; i<=10; i++))
do
	echo "$const*$i= $(( $const * $i))"
done
echo "\n"

# Print length of a str/int
a="Hello World!"
b=6738292
echo ${#a}
echo ${#b}


# Basic arithmetic
c=5
d=20
(( c++ )) # short-hand operators like ++ and += do not need $ for referencing
echo $c

f=$(( c+=3 ))
echo "$f"

g=$(( $c + $d ))
echo $g


# String manipulation
: '
In bash + operator can be used for concatenating strings with a plus
To concatenate them just create a new string with both variables
'
h="Hello"
l="There"
p=$h+$l # Hello+There
echo $p 
p+=" Stranger"
echo $p # Hello+There Stranger

echo "$h $l Stranger" # Hello There Stranger

: '
Getting substring from a string
Syntax: ${str:start_index:length_of_substring}
Bash also starts index from 0;
I this case:
start_index=6
length_of_substring=5(i.e. 5 characters start_index)

'
str="Hello Kitty, This is Ark"
echo ${str:6:5} # Kitty



