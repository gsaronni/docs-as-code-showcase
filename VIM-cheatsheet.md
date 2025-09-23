# Notes

- [Notes](#notes)
  - [Cursor Navigation](#cursor-navigation)
    - [Move around the document](#move-around-the-document)
  - [Precision Insertion](#precision-insertion)
  - [Visual Mode](#visual-mode)
  - [Window Management](#window-management)
  - [Commands](#commands)
  - [.vimrc commands](#vimrc-commands)
  - [Marks](#marks)
  - [Find](#find)
  - [Search flags](#search-flags)
    - [Scope for Search](#scope-for-search)
    - [Specify a Line](#specify-a-line)
    - [Search and execute](#search-and-execute)
      - [Search and execute options](#search-and-execute-options)
      - [Examples with ranges](#examples-with-ranges)
  - [Regular expressions syntax styles](#regular-expressions-syntax-styles)
  - [Configurations](#configurations)
  - [Folding](#folding)
  - [Completition, Filtering and Copying](#completition-filtering-and-copying)
  - [Plugins](#plugins)
  - [Documentation](#documentation)

## Cursor Navigation

Navigation |Description
---------- | ---
yy         | Yank line (copy)
d          | delete (cut)
c          | change (cut, than activate Insert mode)
dd         | delete line also D
p          | paste below cursor
P          | paste above cursor
i          | insert text before cursor
a          | append text after cursor
6l         | forward 6 letters
2j         | down 2 lines
fN         | jump forward to first 'N'
,          | repeat last forward jump
3fN        | jump forward to third 'N'
FN         | jump backward to first 'N'
;          | repeat last backward jump
o          | insert a blank line below and go into Insert mode
u          | undo
Ctrl-R     | redo
cw         | change one word. Switches to Insert mode
w          | forward one word
/N         | look for 'N'
r          | replace
n          | go to next match
N          | go to previous match
v          | character wise visual mode
V          | linewise visual mode
gg         | move to the first line of the document
G          | move to last line of the document
Ctrl-g     | shows line
.          | repeats last command
gm         | middle of the line
`-`        | up to character
`+`        | down to character
M          | jump to the middle of the screen
H          | jump near the top of the screen
L          | jump near the bottom of the screen

### Move around the document

Line Move | Description
--------- | ---
B         | code word backwards
b         | word backwards
h         | char backwards
l         | char afterwards
w         | word afterwards
W         | code word afterwards

Move | Description
--- | ---
0 | Line start
^ | First character
e | word end
E | code word end
`$` | line end

Scroll | Description
--- | ---
Ctrl-b | scroll the screen down
Ctrl-u | scroll half-screen up
Ctrl-y | scroll by line upwards
Ctrl-e | scroll by line downwards
Ctrl-d | scroll half-screen down
Ctrl-f | scroll screen up
zt | scroll near top of the document
zz | scroll middle of document
zb | scroll near bottom of document

Dir listing | Description
--- | ---
i | Thin, long, wide, or tree listings
s | Sort on name, time or file size
r | Reverse sort order
gh | Hide or unhide dotfiles
<Enter> | Open the file or directory
x | View file with associated application
d | Make directory
D | Delete the file or directory
R | Rename the directory or file
- | Go up a directory
gf | Jump to file under the cursor

## Precision Insertion

Navigation | Description
--- | ---
I | Move to first non-blank character of line
a | Move one character right
A | Move to the end of line
o | OOpen a new line below
G | Go to Replace Mode
c | Change: Delete workds and switch to Insert Mode > Example c3w[your text]<Esc>
x | Delete character under cursor
cc or C | Change a line, delete and enter Insert Mode 
J | Join two lines 
gJ | Join two lines removing spaces
2<< | Indent with spaces
Ctrl-d | De-Indent from Insert Mode
Ctrl-t | Indent with from Insert Mode
{ | Bounces cursor left paragraph
} | Bounces cursor right paragraph
( | Bounces cursor left sentence
) | Bounces cursor right sentence
% | Bounces between parentheses, quotes and even language-specific blocks

## Visual Mode

Operator:
- change
- delete
- yank
- visual

Extent:
- all delimiters
- inner object

Object:
- word
- Word
- sentence
- paragraph
- tag
- '' ' [ {

Build a command with operator:extent:object
Example: vit
- Visually select the text inside the surrounding boundary
Example: vat
- Visually select all the text including the boundary delimiter

## Window Management

Window Management | Description
--- | ---
Ctrl-w s | Split window horizontally 
Ctrl-w v | Split window  vertically
Ctrl-w h | Move focus left  
Ctrl-w j | Move focus down 
Ctrl-w k | Move focus up 
Ctrl-w l | Move focus right
Ctrl-w H | Move buffer left one window  
Ctrl-w J | Move buffer up one window  
Ctrl-w K | Move buffer down one window  
Ctrl-w L | Move buffer right one window  
Ctrl-w c | Close window
Ctrl-w o | Close all but current window
Ctrl-w w | Cycle focus anti-clockwise
Ctrl-w W | Cycle focus clockwise
Ctrl-w p | Focus previous window
Ctrl-w t | Moves to the top left window
Ctrl-w b | Moves to the bottom right window
Ctrl-w r | Rotate anti-clockwise
Ctrl-w R | Rotate clockwise
Ctrl-w x | Exchange window with the next one
Ctrl-w T | Moves the new window to a new tab

## Commands

cmd | Description
--- | ---
`:%/s/seach/replace/gc` | replaces global and confirm
:w !sudo tee % example.conf | saves a file as sudo
:e . | browse a directory
:e <filename> | edit a file within Vim
:pwd | you know it
:h window-resize | Show documentation about window defaults and manual resizing
:ls | List buffers (all open documents) (I believe is a plugin)
:b3 | Go to buffer number 3 (I believe is a plugin)
:bn | Next buffer (I believe is a plugin)
:bp | Previous buffer (I believe is a plugin)
:bd | Delete buffer (close file) (I believe is a plugin)
:marks | List of marks

## .vimrc commands

.vimrc | Description
--- | ---
syntax enable | enable syntax highlighting
set syntax=markdown | 
set hidden ? | 
set number | shows lines number
set list | turn a boolean value on
set nolist | turn a boolean value off
set list? | show current value
set list& | reset to default value
set softtabstop=2 | set a value
set softtabstop? | show a value
set softtabstop | show a value
set softtabstop& | reset to default value
set wrap | Turn on line wrapping
set scrolloff=3 | Show three lines of context around the cursor
set title | Set the terminal title
set visualbell | No beeping
set nobackup | Don't make a backup before overwriting a filename
set nowritebackup | And again
set directory=<somewhere> | Keep swap files in one location
set tabstop=2 | Use spaces instead of tabs
set shifttabstop=2 | The number of spaces inserted when TAB is hit
set shiftwidth=2 | The number of spaces inserted when reindent operators or automatic indentation are used
retab | Replace all tabs with spaces in the current buffer
set expandtab | Use spaces instead of tabs
set status line=??? | No clue
set laststatus=2 | ?
colorscheme topfunky-light | Gotta research the availables
filetype plugin indent on | Turn on file type detection
runtime macros/matchit.vim | Load the matchit plugin
set showcmd | display incomplete commands
set showmode | display the mode you're in
set backspace=indent,eol,start | Intuitive backspacing
set hidden | Handle multiple buffers better
set wildmenu | Enhanced command line completion
set wildmode=list:longest | Complete files like a shell
set ignorecase | Case-insensitive searching
set smartcase | But case-sensitive if expressioni contains a capital letter
set ruler | Show cursors position
set autochdir | Automatically use the current file's directory as the working directory
set paste | Disable automatic indentation

Important configuration files:
- `~/.vimrc`: Most settings go here. Shared terminal and graphical options
- `~/.gvimrc`: Graphic-only settings (font, window size)
- `~/.vim/`: Plugins, language-specific options, color schemes

List of plugins
- NERDTree: File system tree
- Project: User-configured tree
- LustyExplorer: Quick folder navigation
- FuzzyFinder: Flexible search
- PeepOpen: Max OS X GUI, Git metadata
- Buffer Explorer 

## Marks

Marks | Description
--- | ---
m`a` | Creates a mark named `a`
`a | Jump to extact line and column <backtick>
'a | Jump to beginning of marked line only <singlequote>
d'`t` | Delete to mark `t`

Vim's Marks | Description
--- | ---
\`0-\`9 | The location of the cursor when you last exited Vim
'' \`\` | The position of the cursor before the latest jump
'. \`. | Location of the last edit

Commands:
- `:marks` : List of marks 

> Lowercase marks are file-specific  
> Uppercase marks are global  

## Find

Shortcuts | Description
--- | ---
? | Search up
/ | Search down
g# | Previous partial match
g* | Next partial match
`#` | Previous current word
`*` | Next current word
N | Previous match
n | Next match
`d/bacon/e` : Delete from cursor to the end of a search
`y?def` | Yank from cursor to beginning of previous "def"
`:%s/search/replace/g` | Replace all occurrences in all lines
`:nohlsearch`

## Search flags

`:[range]s[ubstitute]/{pattern}/{string}/[flags] [count]`

Shortcuts | Description
--- | ---
c | Confirm or skip each match
i | Ignore case
I | Case-sensitive
n | Show number of matches (non-destructive)
p | Print matching lines

### Scope for Search

Shortcuts | Description
--- | ---
`:%s/a/b/` | A leading percent searches all lines in the current file
`:s/a/b/` | Omit the percent to search only the current line
`:.,'a s/a/b/` | Complicated ranges are possible. This searches from the cursor `.` to mark `a`

### Specify a Line

Shortcuts | Description
--- | ---
. | Current line
+5 | Five lines down
-3 | Three lines up
1 | Line 1 of buffer
`$` | Last line of buffer
`%` | All lines in buffer
`'t` | Position of mark t
/pattern/ | Next line where pattern matches (Also try ?pattern?)

### Search and execute

`:[range]g[lobal]/{pattern}/[cmd]`

Shortcuts | Description
--- | ---
`#` | Show matches with line numbers
`d` | Delete matching lines
`y` | Yank matching lines
normal {command} | Execute an extended sequence

#### Search and execute options

Cmds | Description
--- | ---
`#` | Show line number
`y` | Yank matching lines
`d` | Delete matching lines
`:g/param[:foo]/#` | Show lines and line numbers where `params[:foo]` occurs
`:g/^$/d` | Delete blank lines
`g/pattern/+y` | Yank line after the ones that match
`:g/re/p` | Show all line matching regular expressions re

#### Examples with ranges

Cmds | Description
--- | ---
`:.,+10g/foo/d` | Delete matches from cursor through next 10 lines
`:.,'f+2g/foo/#` | Show line number through 2 lines after mark `f`
`:.,/bar/g/foo/d` | Delete lines through next line matching `bar`

`:g/bacon/normal OBACON is near` | Replaces every bacon with OBACON is near for each line

## Regular expressions syntax styles

Ranking | cmd | Description
--- | --- | ---
Very magic | \v | Similar to Perl, Ruby and Python
Magic | \m | The default, but awkward
No magic | \M | Rarely used
Very no magic | \V | Rarely used

Watch again the magic stuff and try to copy some examples

## Configurations

- Basic configuration
- Custom key configuration
- Vimscript plugins

`:vmap>>gv`

Cmd | Description
--- | ---
vmap | Reassing a key in visual mode
`>` | when this is typed
`>gv` | Shift text right, re-select it, and go back to visual mode

Map Scope

Cmd | Description
--- | ---
nmap | Normal mode
imap | Insert mode
vmap | Visual mode
map | Normal, Visual, and operating-pending modes
map! | Command and insert modes
unmap | Remove the mapping
`:nnoremap ; :` | Swap one key with another
`:let mapleader=","` | Change the personal hotkey

> Store keymaps in .vimrc

Abbreaviations: `:iab ff Firefox`

Cmd | Description
--- | ---
iab | Declare an abbreviation for Insert mode
ab | For Insert, Replace, and Command-line modes
ff | What you type
Firefox | What Vim inserts 

## Folding

- Can fit more content in the screen
- Perform searches
- Perform global operations on blocks of code in a single line

Folding Strategies: `:set foldmethod=`

Cmd | Description
--- | ---
indent | Use spaces or tabs to find foldable blocks
syntax | Fold on language features like methods or classes
marker | Fold on textual marks
diff | Fold unchanged text
expr | Custom, code-driven folding
manual | Select ranges to fold

Fold | Description
--- | ---
zk | Move up
zj | Move down
zc | Close
zo | Open
za | Toggle
zM | All most 
zR | All Reduce or open all
zI | Toggle folding all together 
zx | Reset everything except the fold at the cursor line

## Completition, Filtering and Copying

Cmd | Description
--- | ---
Ctrl-n | Activate completion, or completion menu for multiple options
ggVG | Visually select the entire buffer (beginning `gg` to end `G`)
= | Format selection. Can be used on any selection
ce | Center selection on the screen (From Visual Mode)
gq | Reflow paragraph to 80 characters wide
`"0p` | Paste from the zero register 
:registers | Show content of all registers
`"+` | System clipboard
@: | Execute text as command

`:range!filter`

- `ggVG!uniq`
- `gg!Guniq`
- `1,$!uniq`
- `%!uniq`
- `:.,+3ri 60`: Select from cursor to 3 lines down. Right align on 60 characters wide

> Four ways to run the uniq filter on an entire buffer

There are 8 types of registers and a total of 48 registers:
- Delete
- Change
- Substitute
- Search
- Yank
- Unnamed register: Contains the last deleted text
- etc ...

`"ayy`
- `"a`: Use register a
- `yy`: Yank current line

`"ap`: Paste from register a

Macros: `qadWWPjq`
- `qa`: Start a recording named `a`
- `dW`: Delete a word
- `W`: Go forward one word
- `P`: Paste contents
- `j`: Move down one line
- `q`: Quit Recording

## Plugins
They are custom vimscripts that loads at the beginning 

They can [be](https://www.vim.org/scripts/): 
- Global
- File type

Most plugins are copied into your dot vim directory

## Documentation

Cmd | Description
--- | ---
:h | Opens the help window
:h topic | Go straight to the topic
:h to<tab> | Use autocompletion 
Ctrl-} | Follow a link
Ctrl-t or Ctrl-o | Back from the link
:q | Close the help window
:helptags ~/.vim/doc | Import standard plugins docs
:calll pathogen#helptags() | Import docs with the pathogen plugin system
