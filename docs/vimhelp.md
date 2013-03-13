# Vim Reference

	.	Repeat last action
	yyp	yank and print below this line
	p P	print register after or before cursor
	W B	forward back by WORDS
	e E	move to end of current word or WORD
	ge gE	move back to end of last word or WORD
	a A	append after current character or at end of line
	ea Ea	append after current word, WORD
	i I	insert before current character or beginning of line
	R	begin replacing characters from cursor
	C	change to end of line
	J gJ	join current line with next with space, without space
	cc S	change current line
	~	change case and move forward
	o O	new line below or above this one
	x X	delete character under, before cursor
	dd D	cut current line, or to end of line
	\:{r}d	delete lines of {r}ange
	0	to beginning of line first character
	f{char}	next instance of a character
	F{char} last instance of a character
	t{char] forward to character before next occurence
	T{char} back to character before last occurence 
	^ $	first, last character of line
	{#}gg	move to line #
	:{#}	move to line #
	{#}|	move to column # of current line
	M	move to middle of window
	H	move to the top of the window
	L	move to the bottom of the window
	; ,	next/last instance of f/F find
	/	search forward
	?	search back
	gg	beginning of file
	{}	move to previous or next paragraph
	()	move to previous or next sentence
	G	end of file
	ci"	replace what is in quotes
	ca"	replace what is in quotes and include quotes
	daw	delete a word and space around it
	das	delete a sentence
	dap	delete a paragraph and blank line
	ciw	replace a word and leave spaces alone
	< >	decrease or increase indentation
	v V c-v	visual mode, visual line mode (selects current line), Visual block mode
	gk	move up visual line versus real line (but I switched in .vimrc)
	u c-r	undo and redo
	m{char}	mark current location with marker {char}
	zt	set current line at top of window
	z. zz	set current line at center of window
	zb	set current line at bottom of window
	z=	bring up suggested changes to mispelled words
	zg	adds a word to the accepted spellings
	]s [s	next mispelled word
    g c-g   get number of words

## Insert Mode

	c-n c-p	autocompletion before or after cursor
	c-w	delete word before cursor
	c-w	delete all characters on current line
	c-o	enter normal mode for one command and return to insert mode
	c-y	repeat line above
	c-e	repeat line below
	c-t	indent to right
	c-d	indent to left
	c-y c-e	repeat character at this position from line above, below

## Visual Mode

	aw/s/p	select word, sentence, paragraph
	O o	move to other end of visual block
	r{chr}	replace the whole selection with the key
	Esc	exit visual mode
	v	exit visual mode
	* In visual block mode (c-v) editing a selection then going back to normal makes edit across area

## Tabs and Windows

	:tabn {#}	switch to tab page number
	:tabn	switch to next tab
	:tabp	switch to previous tab
	:tabe {file}	open {file} in new tab
	:tabc	close current tab and all of its windows
	:tabo	keep active tab open but close others
	{#}gt	switch between tabs
	c-ws	Split windows
	c-ww	Switch between windows
	c-wq	Quit a window

## Working with Files

Some of these assume you are in the file browser (after, for example :e.)j

	ZZ	write current file and quit (normal)
	:e 	edit a file in new buffer
	:bn	next buffer
	:bp	previous buffer
	:sp	open a file in new buffer and split window
	:e.	Show the native file explorer for pwd
	:E	Explore the directory of the active buffer
	:Ve	Verticle split explore directory of active buffer
	%	create a new file from file browser
	d	create a new directory from file browser
	R	rename file under cursor from file browser
	D	delete file or directory under cursor from file browser
	c-^	switch back to buffer from file browser from file browser
	:vs.	show file browser in split window vertical

## Command line options

	:set spell	turn spelling on
	:set spelllang	set language en_us en_gb

## Plugins

	easymotion.vim
		* ,,w to show keys to hit to jump to a word
		* ,,f{char} to show chars to jump to 
	surround.vim
		* grab text in visual then S" to surround it with quotes
		* inside text in normal, cs"' to replace double with single quotes
		* when you surround in tag like <strong> then difference betweeen s and S is indentation
		* ysiw" grab the current word and add quotes
		* ySiw<strong> add this tag to current word and indent it
		* ds" delete quotations around current block
	fugitive.vim
		:Gstatus - git status
		:Gcommit - opens buffer for commit message, save and close to commit
		:Gwrite - save and stage the file
		:Gblame
		:Gmove - git mv
		:Gremove - git rm and deletes the buffer
	snipmate
		pandoc markdown snippets:
			[<tab> sets up a link
			[:<tab> creates []: http://url "title"
			[@<tab> creates [](mailto:email)
			![<tab> creates ![](url "title")
			[^:<tab> creates [^]: note
			%%<tab> sets up title block
			::<tab> sets up definition list
			===<tab> makes a line of === matching line above
			---<tab> makes a line of --- matching line above
	peepopen:
		c-o
	tcomment:
		gcc	toggle comment for the current line
	vmail:
		* when open message, space to full screen it and then space again to go back
		c-j ,j	to look at next message
		c-k ,k	to look at previous message
		c-x c-u	look for match for what typed so far
		c-y	select highlighted match from match list without enter
		G<entr>	to go to bottom of message list and load more
		u ,u	check for new messages
		,* ,8	to star a message
		,# ,3	delete message
		,e	archive a message
		,b ,B	move/copy a message to another mailbox
		,! ,1	spam a message
		U I	mark messae as unread or read
		u ,u	in message list or message body, this will check for new messages
		,c	compose message
		,r	reply message
		,a	reply all
		,f	forward message
		,vs	to send a message when you are done
		,q	quite composition window
		,qq	quit vmail
		,m	switch message box
			c-p c-n	move up and down choices
	pandoc snippets:
		
