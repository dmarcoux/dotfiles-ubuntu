# Keyboard Shortcuts

## GNOME

| Function                                          | Keyboard Shortcut        |
|---------------------------------------------------|--------------------------|
| Switch to workspace 1-5                           | Super _+_ 1-5            |
| Move window to workspace 1-5                      | Super _+_ Shift _+_ 1-5  |
| Move window one monitor to the left/right         | Super _+_ Shift _+_ H/L  |
| Move window one monitor up/down                   | Super _+_ Shift _+_ K/J  |
| Switch to another window of the current app       | Super _+_ /              |
| Switch to another window across all workspaces    | Super _+_ Tab            |
| Switch to another window on the current workspace | Alt _+_ Tab              |
| Close app                                         | Super _+_ W              |
| Lock screen                                       | Super _+_ Shift _+_ C    |
| Show the notification list                        | Super _+_ V              |
| Open the quick settings menu                      | Super _+_ S              |
| Launch terminal                                   | Super _+_ Enter          |
| Show all windows overview                         | Super                    |
| Open/Launch app                                   | Super _+_ <something...> |
| Show window menu (hide, take screenshot, etc...)  | Alt _+_ Space            |

## Tiling

| Function                      | Keyboard Shortcut     |
|-------------------------------|-----------------------|
| Toggle maximize window        | Super _+_ K           |
| Tile window to the left half  | Super _+_ H           |
| Tile window to the right half | Super _+_ L           |
| Tiling overlay                | Super _+_ T           |
| Tiling settings               | Super _+_ Shift _+_ T |

### Within the Tiling Overlay

_All **Tile window to (...)** keyboard shortcuts below are for the tiling layout 1._

| Function                           | Keyboard Shortcut |
|------------------------------------|-------------------|
| Switch to tiling layout 1-2        | Super _+_ 1-2     |
| Tile window to the vertical center | Super _+_ T W S   |
| Tile window to the vertical left   | Super _+_ T Q A   |
| Tile window to the vertical right  | Super _+_ T E D   |
| Tile window to the upper left      | Super _+_ T Q Q   |
| Tile window to the lower left      | Super _+_ T A A   |
| Tile window to the upper right     | Super _+_ T E E   |
| Tile window to the lower right     | Super _+_ T D D   |

## File Manager (Files)

| Function   | Keyboard Shortcut |
|------------|-------------------|
| Go to path | Ctrl _+_ L        |

## Terminal Emulator (Foot)

### Normal Mode

| Function                                        | Keyboard Shortcut    |
|-------------------------------------------------|----------------------|
| Enter [URL mode](#URL-Mode)                     | Ctrl _+_ Shift _+_ O |
| Start a [scrollback search](#Scrollback-Search) | Ctrl _+_ Shift _+_ R |
| Spawn a new terminal                            | Ctrl _+_ Shift _+_ N |
| Increase font size                              | Ctrl _+_ =/+         |
| Decrease font size                              | Ctrl _+_ -           |
| Reset font size                                 |  Ctrl _+_ 0          |
| Copy selected text                              | Ctrl _+_ Shift _+_ C |
| Paste from clipboad                             | Ctrl _+_ Shift _+_ V |

### URL Mode

Foot supports URL detection. But, unlike many other terminal emulators, where
URLs are highlighted when they are hovered and opened by clicking on them, foot
uses a keyboard driven approach.

In the URL mode, all currently visible URLs are underlined, and each is
associated with a jump-label. The jump-label indicates the key sequence (e.g.
"AF") to use to activate the URL.

More details in [Foot's documentation](https://codeberg.org/dnkl/foot#urls).

| Function                                                     | Keyboard Shortcut                           |
|--------------------------------------------------------------|---------------------------------------------|
| Exit URL mode                                                |  Escape, Ctrl _+_ C, Ctrl _+_ G, Ctrl _+_ D |
| Toggle whether the URL is displayed in the jump label or not | T                                           |

### Scrollback Search

| Function                                                                                                                                     | Keyboard Shortcut                                       |
|----------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------|
| Search backward for next match                                                                                                               | Ctrl _+_ R                                              |
| Search forward for next match                                                                                                                | Ctrl _+_ S                                              |
| Extend current selection (and thus the search criteria) to the end of the word, or the next word if currently at a word separating character | Ctrl _+_ W                                              |
| Same as Ctrl _+_ W, except that the only word separating characters are whitespace characters                                                | Ctrl _+_ Shift _+_ W                                    |
| Past from clipboard into the search buffer                                                                                                   | Ctrl _+_ V, Ctrl _+_ Shift _+_ V, Ctrl _+_ Y, XF86Paste |
| Paste from primary selection into the search buffer                                                                                          | Shift _+_ Insert                                        |
| Cancel the search                                                                                                                            | Escape, Ctrl _+_ G                                      |
| Finish the search and copy the current match to the primary selection                                                                        | Enter                                                   |
