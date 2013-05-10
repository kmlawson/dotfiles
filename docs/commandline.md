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

tr -cs "[:alnum:]" "\n" < testfile.txt | sort | uniq
    * replace everything except (-c) alphanumeric characters with \n compress duplicates
    * essentially creates a list of words
    * then sort it so that identical lines are next to each other
    * then spit out unique entries, eliminating duplicates on adjacent lines

tr -d "[:blank:]" < testfile.txt
    * output the file with all blank spaces deleted

tr "[:blank:]" "-" < testfile.txt
    * output the file with all spaces replaced with -

wc -l/-m/-w list the lines/characters/words (only) for file

sort -f/-g/-n/-r/-o sort fines of file ignoring case/comparing general numerical value/string numberical value/reverse/outputting to file

uniq 
    -c  precede with count
    -d  only duplicate lines
    -f num  ignore first num fields, one based
    -s num  ignore first num chars 
    -i  case insensitive

sed
    '/search/' - returns lines which contain pattern if -n is added
    's/search/replace/'
        /g add g for global replace
        /i add i for ignore case
        /p if -n is on, print line
        /w file -  if -n is on, save line to file
        & matched string
        \1 first [] pattern
    -r - use extended regex including +
    -n - by default output nothing
    -e - prefix additional commands for sed
