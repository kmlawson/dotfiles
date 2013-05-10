Command Line Tips
=================

ctrl a to go to beginning of line  
ctrl e to end of line  
ctrl k to delete a line forward  
ctrl w delete word/argument left of cursor  
ctrl z suspend process, then bg command will continue running in bkgnd  
fg bring a background process back to foreground  
jobs list jobs running  
fg %3 bring job three back to foreground  

!-2         execute second to last command  
![word]     executes last command starting with [word]  
!?[word]?   executes last command containing [word]  
^no^yes^    execute last command replacing no with yes  
!-2:s/no/NO replace no with NO in the second to last command  
cd !!:1     change to directory that is first parameter of last command  
cd !$       change directory to last parameter of last command  

### TR

* tr -cs "[:alnum:]" "\n" < testfile.txt | sort | uniq  
    * replace everything except (-c) alphanumeric characters with \n compress duplicates  
    * essentially creates a list of words  
    * then sort it so that identical lines are next to each other  
    * then spit out unique entries, eliminating duplicates on adjacent lines  

* tr -d "[:blank:]" < testfile.txt
    * output the file with all blank spaces deleted

* tr "[:lower:]" "[:upper:]" < testfile.txt

* tr "[:blank:]" "-" < testfile.txt
    * output the file with all spaces replaced with -


### SED

* sed
    * '/search/' - returns lines which contain pattern if -n is added
    * 's/search/replace/'
        * /g add g for global replace
        * /i add i for ignore case
        * /p if -n is on, print line
        * /w file -  if -n is on, save line to file
        * & matched string
        * \1 first [] pattern
    * 'y/abc/ABC/' file.txt replace all a b and c with A B and C in file.txt
    * -r - use extended regex including +
    * -n - by default output nothing
    * -e - prefix additional commands for sed
    * add number after sed within quotes and before s// command to limit it to line or range (1,100)
        * you can use a pattern instead, '/[pattern]/ s/[search]/[replace]/'
        * you can use a pattern for a range '/start/,/stop/ s/search/replace/'
    * q = quit, can be replacement for head command, sed 10q shows first ten lines
        * sed 'search/q' file.txt - will show first hit for this in file
    * a/i/c = insert/append/change a line before/after/of a pattern:
        * sed '/append/ a\[ENTER]append this after line with append'
    * print line numbers containing term: sed -n /search/ =' file.txt
    * delete lines containing pattern with sed '/search/ d' file.txt

### GREP

* find lines with:
    grep searchterm
    grep '^reg[eE]x$'
* -v delete lines with
* -i ignore case
* -n precede with line number
* -o print only matching part of line
* -c just return count of hits
* -r recursively search subdirectories

### Other Commands

* paste - if you give it two files, it will merge each line of them together separated by tabl
    * -d use another delimiter
    * -c concatenate lines together
    * - - - divide standard input into three columns

* cut - cut selected portions of each line of file

* wc -l/-m/-w list the lines/characters/words (only) for file

* sort -f/-g/-n/-r/-o sort fines of file ignoring case/comparing general numerical value/string numberical value/reverse/outputting to file

* uniq 
    * -c  precede with count
    * -d  only duplicate lines
    * -f num  ignore first num fields, one based
    * -s num  ignore first num chars 
    * -i  case insensitive
