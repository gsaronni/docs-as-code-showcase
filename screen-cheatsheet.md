# Screen command

- [Screen command](#screen-command)
  - [`screen` commands discussed:](#screen-commands-discussed)
  - [Intermediate](#intermediate)
  - [Advanced `screen` commands and tips for mastering `screen`:](#advanced-screen-commands-and-tips-for-mastering-screen)
  - [Tips for Mastery:](#tips-for-mastery)
  - [Screenrc file](#screenrc-file)

## `screen` commands discussed:

| Command                         | Description                                                                     |
| ------------------------------- | ------------------------------------------------------------------------------- |
| `screen`                        | Start a new `screen` session.                                                   |
| `Ctrl-a c`                      | Create a new window within the `screen` session.                                |
| `Ctrl-a n`                      | Switch to the next window within the `screen` session.                          |
| `Ctrl-a p`                      | Switch to the previous window within the `screen` session.                      |
| `Ctrl-a ""`                      | List all windows and allow navigation to a specific one.                        |
| `Ctrl-a S`                      | Split the current window horizontally.                                          |
| `Ctrl-a \|`                     | Split the current window vertically.                                            |
| `Ctrl-a Tab`                    | Switch between panes (if your screen is split).                                 |
| `Ctrl-a Q`                      | Show numbers in each pane; press the corresponding number key to switch panes.  |
| `Ctrl-a :resize`                | Resize the active region.                                                       |
| `Ctrl-a :layout`                | Change the layout of the split regions.                                         |
| `exit`                          | Close the current window or pane.                                               |
| `Ctrl-a \`                      | Terminate the entire `screen` session.                                          |
| `Ctrl-a A`                      | Rename the current window.                                                      |
| `screen -ls`                    | List all active `screen` sessions.                                              |
| `screen -r`                     | Reattach to the last detached `screen` session.                                 |
| `screen -r session_id`          | Reattach to a specific detached `screen` session.                               |
| `screen -X -S session_id quit`  | Eliminates a specific detached `screen` session.                                |
| `killall screen`                | Eliminates all `screen` session.                                                |

These commands cover basic: 
- window and pane management
- splitting the screen
- resizing
- renaming windows within a `screen` session. 

> Keep in mind that `Ctrl-a` is the default command prefix, but you can customize it in your `.screenrc` configuration file if needed.

## Intermediate

| Command                         | Description                                                                      |
| ------------------------------- | -------------------------------------------------------------------------------- |
| `screen -r session_id`          | Reattach to a specific detached `screen` session.                                |
| `screen -x`                     | Attach to a running `screen` session and share the session with another user.    |
| `Ctrl-a ?`                      | Display a help message showing all available `screen` commands.                  |
| `Ctrl-a d`                      | Detach from the current `screen` session, leaving it running in the background.  |
| `Ctrl-a k`                      | Kill the current window or pane.                                                 |
| `Ctrl-a :quit`                  | Kill all windows and terminate the `screen` session.                             |
| `Ctrl-a [`                      | Enter copy/scrollback mode to navigate and copy text.                            |
| `Ctrl-a ]`                      | Paste the copied text in copy/scrollback mode.                                   |
| `Ctrl-a :readbuf`               | Read the paste buffer from the screen into the input buffer.                     |
| `Ctrl-a :writebuf`              | Write the input buffer to the paste buffer.                                      |
| `Ctrl-a :source filename`       | Execute commands from a file in the user's screenrc directory.                   |
| `Ctrl-a :eval command`          | Evaluate a configuration command at runtime.                                     |
| `Ctrl-a :at '#' command`        | Execute a command in a specific window by number.                                |
| `Ctrl-a :detach and-hangup`     | Detach and log out, leaving processes running.                                   |
| `Ctrl-a :multiuser on/off`      | Enable or disable multiuser mode.                                                |
| `Ctrl-a :acladd username`       | Add a user to the list of users allowed in multiuser mode.                       |
| `Ctrl-a :aclchg username`       | Change the permissions for a user in multiuser mode.                             |
| `Ctrl-a :lockscreen on/off`     | Enable or disable the terminal lock.                                             |

These additional commands cover a range of functionalities, including copy/paste, multiuser mode, terminal locking, and more. Keep in mind that `screen` is a powerful tool with many features, and these commands provide additional flexibility and control over your sessions.

## Advanced `screen` commands and tips for mastering `screen`:

| Command                         | Description                                                                      |
| --------------------------------| -------------------------------------------------------------------------------- |
| `Ctrl-a ?`                      | Display a help message showing all available `screen` commands.                  |
| `Ctrl-a t`                      | Display time information at the bottom of the terminal.                          |
| `Ctrl-a :time`                  | Display information about the `screen` session's timing.                         |
| `Ctrl-a :`                      | Enter command mode for interactive command input.                                |
| `Ctrl-a :number`                | Go to the specified window number.                                               |
| `Ctrl-a :title string`          | Set a title for the current window.                                              |
| `Ctrl-a :sessionname name`      | Set or change the name of the `screen` session.                                  |
| `Ctrl-a :setwins size`          | Set the size of the window (e.g., `Ctrl-a :setwins 80 24`).                      |
| `Ctrl-a :resize`                | Resize the active region (useful in split-screen mode).                          |
| `Ctrl-a :fit`                   | Resize the window to the current terminal size.                                  |
| `Ctrl-a :readbuf`               | Read the paste buffer from the screen into the input buffer.                     |
| `Ctrl-a :writebuf`              | Write the input buffer to the paste buffer.                                      |
| `Ctrl-a :hardcopy -h file`      | Save a hardcopy of the current window to a file.                                 |
| `Ctrl-a :log on/off`            | Turn logging of the current window to a file on or off.                          |
| `Ctrl-a :logfile filename`      | Start logging to the specified file.                                             |
| `Ctrl-a :source filename`       | Execute commands from a file in the user's screenrc directory.                   |
| `Ctrl-a :eval command`          | Evaluate a configuration command at runtime.                                     |
| `Ctrl-a :at '#' command`        | Execute a command in a specific window by number.                                |
| `Ctrl-a :suspend`               | Suspend the `screen` process, returning to the shell.                            |
| `Ctrl-a :split`                 | Split the current region horizontally.                                           |
| `Ctrl-a :vsplit`                | Split the current region vertically.                                             |
| `Ctrl-a :remove`                | Remove the current region or window.                                             |
| `Ctrl-a :focus`                 | Toggle focus between different split regions.                                    |
| `Ctrl-a :pow_break`             | Break out of a multi-user display (used when sharing a session).                 |
| `Ctrl-a :multiuser on/off`      | Enable or disable multiuser mode.                                                |
| `Ctrl-a :acladd username`       | Add a user to the list of users allowed in multiuser mode.                       |
| `Ctrl-a :aclchg username`       | Change the permissions for a user in multiuser mode.                             |
| `Ctrl-a :lockscreen on/off`     | Enable or disable the terminal lock.                                             |
| `Ctrl-a :message command`       | Display a message for a specified duration.                                      |
| `Ctrl-a :sleep seconds`         | Sleep for the specified number of seconds.                                       |

## Tips for Mastery:

1. **Customize Your Configuration:**
- Edit your `~/.screenrc` file to customize the default behavior of `screen`.
- Add key bindings, set environment variables, or configure other settings.

1. **Learn Copy/Paste Mode:**
- Enter copy mode (`Ctrl-a [`) to scroll through the buffer and copy text.
- Paste the copied text using `Ctrl-a ]`.

1. **Use Layouts:**
- Experiment with different layouts to organize your split regions effectively (`Ctrl-a :layout`).

1. **Multiuser Mode:**
- Understand and use multiuser mode for collaborative sessions.
- Manage access permissions with `Ctrl-a :acladd` and `Ctrl-a :aclchg`.

1. **Logging and Hardcopy:**
- Log sessions with `Ctrl-a :log` or save a hardcopy with `Ctrl-a :hardcopy`.

1. **Dynamic Window Management:**
- Dynamically create, close, and navigate between windows and panes.
- Use `Ctrl-a c`, `Ctrl-a n`, `Ctrl-a p`, `Ctrl-a :remove`, etc.

1. **Powerful Split Screen:**
- Master split screen with `Ctrl-a :split` and `Ctrl-a :vsplit`.
- Adjust sizes with `Ctrl-a :resize` and switch focus with `Ctrl-a :focus`.

1. **Explore Other Commands:**
- Check the `screen` man page (`man screen`) for additional commands and options.
- Experiment with commands in interactive command mode (`Ctrl-a :`).

1. **Practice Detaching and Reattaching:**
- Detach from a session (`Ctrl-a d`) and reattach later (`screen -r`).

1.  **Effective Naming and Titling:**
 - Use `Ctrl-a :sessionname` to give meaningful names to your `screen` sessions.
 - Set titles for windows with `Ctrl-a :title`.

> Remember, `screen` is a versatile tool with many features. Mastery comes with practice and experimentation.

## Screenrc file

A `.screenrc` file allows you to customize the behavior of `screen` according to your preferences. Here's a basic example of a `.screenrc` file with some common configurations:

```bash
# .screenrc

# Set a status line at the bottom of the screen
hardstatus alwayslastline
hardstatus string "%{= bw}%-w%{=b I}%n %t%{-}%+w %=%{kG}%H %{kY}%Y-%m-%d %c"

# Enable visual bell instead of audible bell
vbell on

# Set the scrollback buffer to 5000 lines
defscrollback 5000

# Use a 256-color terminal
termcapinfo xterm 'Co#256:AB=\E[48;5;%dm:AF=\E[38;5;%dm'

# Enable UTF-8 encoding
defutf8 on

# Set a custom escape character (useful if Ctrl-a conflicts with other programs)
escape ^Tt

# Enable multiuser mode with password protection
multiuser on
acladd your_username

# Customize the message displayed in the startup banner
startup_message off
defhstatus "Screen: ^En (^Et)"
```

Here's a breakdown of what's happening in this `.screenrc` file:

- **`hardstatus`**: Configures the status line at the bottom of the screen, showing window numbers, titles, and system information.
- **`vbell`**: Configures the visual bell (flashing screen) instead of the audible bell.
- **`defscrollback`**: Sets the scrollback buffer to 5000 lines.
- **`termcapinfo`**: Configures the terminal to use 256 colors if available.
- **`defutf8`**: Enables UTF-8 encoding.
- **`escape`**: Sets a custom escape character. In this case, it's changed to Ctrl-Tt.
- **`multiuser`**: Enables multiuser mode with password protection. Replace `your_username` with your actual username.
- **`acladd`**: Adds a user to the access control list for multiuser mode.
- **`startup_message`**: Disables the startup message.
- **`defhstatus`**: Sets a custom status message for the startup banner.

Feel free to modify this sample according to your preferences. Add or remove configurations based on what features you find useful. The `man screen` command provides detailed information about each configuration option.
