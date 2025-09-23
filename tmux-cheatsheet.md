# TMUX

- [CheatSheet](https://tmuxcheatsheet.com/)
- [GitHubMan](https://github.com/tmux/tmux/wiki/Getting-Started)

## cheatsheet

| Command Description                          | Command Key Binding        |
|----------------------------------------------|----------------------------|
| Start a new session                          | `tmux`                     |
| List existing sessions                       | `tmux list-sessions`       |
| Attach to a session                          | `tmux attach-session -t [session_name]` |
| Detach from a session                        | `Ctrl-b` + `d`             |
| Create a named session                       | `tmux new-session -s [session_name]` |
| Create a new window                          | `Ctrl-b` + `c`             |
| List windows                                 | `Ctrl-b` + `w`             |
| Switch to the next window                    | `Ctrl-b` + `n`             |
| Switch to the previous window                | `Ctrl-b` + `p`             |
| Switch to a specific window by number        | `Ctrl-b` + `[window_number]` |
| Rename the current window                    | `Ctrl-b` + `,`             |
| Close the current window                     | `Ctrl-b` + `&`             |
| Split the window horizontally                | `Ctrl-b` + `%`             |
| Split the window vertically                  | `Ctrl-b` + `"`             |
| Navigate between panes                       | `Ctrl-b` + arrow keys      |
| Toggle between panes                         | `Ctrl-b` + `o`             |
| Zoom into a pane (maximize)                  | `Ctrl-b` + `z`             |
| Close the current pane                       | `Ctrl-b` + `x`             |
| Kill a session                               | `tmux kill-session -t [session_name]` |
| Kill all sessions                            | `tmux kill-server`         |
| Reload the `tmux` configuration              | `tmux source-file ~/.tmux.conf` |
| List all key bindings                        | `tmux list-keys`           |
| Show current key bindings                    | `Ctrl-b` + `?`             |


## Basic Commands

| Command Description                          | Command Key Binding                  |
|----------------------------------------------|--------------------------------------|
| Start a new session                          | `tmux`                               |
| List existing sessions                       | `tmux list-sessions`                 |
| Attach to a session                          | `tmux attach-session -t [session_name]` |
| Detach from a session                        | `Ctrl-b` + `d`                       |
| Create a named session                       | `tmux new-session -s [session_name]` |
| Kill a session                               | `tmux kill-session -t [session_name]` |
| Kill all sessions                            | `tmux kill-server`                    |

---

## Window Management

| Command Description                          | Command Key Binding                  |
|----------------------------------------------|--------------------------------------|
| Create a new window                          | `Ctrl-b` + `c`                       |
| List windows                                 | `Ctrl-b` + `w`                       |
| Switch to the next window                    | `Ctrl-b` + `n`                       |
| Switch to the previous window                | `Ctrl-b` + `p`                       |
| Switch to a specific window by number        | `Ctrl-b` + `[window_number]`          |
| Rename the current window                    | `Ctrl-b` + `,`                       |
| Close the current window                     | `Ctrl-b` + `&`                       |

---

## Pane Management

| Command Description                          | Command Key Binding                  |
|----------------------------------------------|--------------------------------------|
| Split the window vertically                  | `Ctrl-b` + `%`                       |
| Split the window horizontally                | `Ctrl-b` + `"`                       |
| Navigate between panes                       | `Ctrl-b` + arrow keys                |
| Toggle between panes                         | `Ctrl-b` + `o`                       |
| Zoom into a pane (maximize)                  | `Ctrl-b` + `z`                       |
| Close the current pane                       | `Ctrl-b` + `x`                       |

---

## Miscellaneous

| Command Description                          | Command Key Binding                  |
|----------------------------------------------|--------------------------------------|
| Reload the `tmux` configuration              | `tmux source-file ~/.tmux.conf`      |
| List all key bindings                        | `tmux list-keys`                     |
| Show current key bindings                    | `Ctrl-b` + `?`                       |
