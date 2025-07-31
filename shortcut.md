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

% vertical split
" horizontal split

o swap panes
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

## misc

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

> > and << indent the line
> > vap and vip select the current paragraphe
> > 0dG delete from the current to the end of the page

:r !<cmd> ! for exec shell cmd, r to output result of the cmd in the cursor position
:args `find . -type f` put all files from the current dir to args
:argdo %s/search/replace/g run a cmd for every matching files
argdo %s/search/replace/g | update
