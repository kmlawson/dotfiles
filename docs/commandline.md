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
