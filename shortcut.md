# hypr

# tmux

Prefix: Ctrl-Space

## Sessions

:new<CR> new session
s list sessions
$ name session

## Windows

c create window
w list windows
n next window
p previous window
f find window
, name window
& kill window

## Panes

<leader>- vertical split
<leader>| horizontal split
C-h/j/k/l move to left/bottom/top/right pane
C-d delete pane
<leader> o show current sessions
q show pane numbers
x kill pane

- break pane into window (e.g. to select text by mouse to copy)

- restore pane from window
  ⍽ space - toggle between layouts
  q (Show pane numbers, when the numbers show up type the key to goto that pane)
  { (Move the current pane left)
  } (Move the current pane right)
  z toggle pane zoom

# zsh

# nvim

modes:
v visual
c-v block
i insert
: command

c-/ toggle terminal

## navigation

\[b nav to previous buffer
\]b nav to previous buffer

<leader>- split window below
<leader>| split window right
<leader>wd close current window
<leader>wm zoom current window
c-h/j/j/k/l move to left/bottom/top/right window

## git

<leader>gb git blame

## quicksearch

\* on a word to search for it, n and N to next and previous match

## registers

y yank to default register, it's a queue
:reg to show registers content
"1p to past the register 1 content
"+p to past the clipboard content, like ctrl shift v
:let @+=@% copy current file name to clipboard
:let @+=$(ls) copy current dir content to clipboard
:redir @a | <some ex command> | redir END copy output of the command to register a

## misc

<leader>fr find recent files
<leader>fc find config files
<leader>cp markdown preview
<leader>sc command history
<leader>sk telescope search thru shortcuts
<leader>bb to cycle between current and previous buffers
<leader>bx to close the current buffer

c-s save file

. repeat last edit command
s search char or word to jump
mx set mark x; 'x go to mark x
'. go to position last edit
'' go to last point before jump
u and c-r undo and redo
o and O insert a new line after and before the current position
I and A put cursor at the begin and the end of the current line
n and N to next and previous search
J concatenate line
x delete char
r and R replace character, continue editing
C and D change or delete from the cursor to the end
f-<char> jump to the next char ; and , to navigate after and previous match
d/hello detete everything between cursor and hello
V select the current line
xp swap two character
yy copy the current line
ci( change inside parentheses
dd delete the current line
gg"+yG copy all content to ciplboard
cc change the whole line
C change the end of the line
:%s/foo/bar/g substitute all occurrences of "foo" to "bar"
viw stand for select inner word, use p next to paste the copied word

> > and << indent the line
> > vap and vip select the current paragraphe
> > 0dG delete from the current to the end of the page
> > :%s/search/replace/g replace all occurrences of "search" to "replace"
> > %s/search/replace/gc replace all occurrences of "search" to "replace" with confirmation

> > :r !<cmd> ! for exec shell cmd, r to output result of the cmd in the cursor position
> > :args `find . -type f` put all files from the current dir to args
> > :argdo %s/search/replace/g run a cmd for every matching files
> > argdo %s/search/replace/g | update
