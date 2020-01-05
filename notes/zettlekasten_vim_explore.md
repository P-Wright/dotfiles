# Create a link in this note to a new note and jump to it

**Custom function**:
- create function in vimrc that creates a new note file,
  but also inserts the name of that file at the cursor.
- commands Nn and Nln quickly create a new note and a new note
  with link to the current document

Dot register?
- Go into insert mode
- Type name of new file 
- Go to normal mode
- hit : then CNTRL-R . to bringup the name of the file
- con: inserts literally, will have backspaces, etc.
- con: can't use auto file generation.


Yank?
- Type name of new file with extension
- Go to normal mode
- yW to yank the whole file name 
- :e CTRL-R 0 (paste in yank register) 
- con: A few extra characters over the dot reg
- con: can't use auto file generation 

# Create 'backlink' in new note to previous note
Alternate file register:
- :e newNote.md
- go into insert mode:
- In new file: CTRL-R # for alternate file name 
    - this will paste in the file you were just in


# Fuzzy find by title existing note and insert link
File name completion?
- use note name format (primary keyword) (title) (datestamp)
- this allows typing the first keyword then CTRL-X, CTRL-F to see all
  realed notes
- CTRL-X then CTRL-F

Use find to go to note of interest
- find *pattern* will approximate fuzzy find 
- open file, return to original file and CTRL-R CTRL #

# Find by content search existing note and insert link
Open Location List window and use CTRL-X/F to quick add
- lopen to open location list
- Fn PAT to populate links with matching pattern 
- CTRL-X/F to add the link

Open Location List window and copy multiple files into registers 
- lopen to open location list
- Fn PAT to populate links with matching pattern 
- CTRL-W k to focus on location window
- use "ayt| to yank filename in register a
- got to start of next file
- use "byt| to yank filename in register b
- switch back to to top window go into insert mode and
  use CTRL-R a and CTRL-R b to paste

Vertical split to find files to link / CTRL-X/F to quick add
- open vertical split for browsing other files
- use Ngrep / lopen to find a file of interest
- switch back to orignal file and start typing name (as shown in
  bottom of other window) and use CTRL-X then CNTRL-F to complete
- opening the location list is helpful to add several at a time

Custom .vimrc Function/Leader command
- SPACE [ "keyword" will search notes and populate the location list
  with matches
- lopen will bring up window with the matches
- open note of interest
- return to original page and use CTRL-R # to paste in link to
  previous file
- consider having vertical split and using this for navigating the
  related pages that you may want to link to.
  - vsplit
  - SPACE [ "keyword"
  - lopen to open nav window
  - CTRL w j to go to go to left window 
  - CTRL r # to paste in previous file


