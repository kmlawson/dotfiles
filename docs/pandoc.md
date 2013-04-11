# Pandoc Reference

pandoc file.md -o output.pdf 

* --latex-engine=xelatex - helps with unusual characters that give me a bug
* -S - convert quotes and ellipses to typographically correct versions
* -V geometry:margin=1in - set the otherwise wide margins to 1in

pandoc ... -S --latex-engine=xelatex -V geometry:margin=1in

