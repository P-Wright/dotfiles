#tools for filtering log files

## sed- search and replace strings(regex)
-sed 's/<search for>/<replace with>/g'
    - the g just says all occurances
-sed '/<pattern to delete>/d'

## tr - search and replace individual characters
- tr 'X' 'Y' changes all occurances of x to y
- tr -s ' ' find all multiple occurances of a char and replace with single char

## cut - extract just a part of each line in a file
- cut -d: -f3,5 - use ':' as a delimeter and only extract out the 3,4 and 5 columns

## find supress permission denied errors
find / -name txt 2>&1 | grep -v 'Permission denied'
