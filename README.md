# KarabinerElements_AlfredModalMode

This setup allows one to invoke Alfred to a custom workflow, and remaps the numeric keypad's numbers to include the command modifier. This way Alfred can be used as a quick modal menu requiring only 2 single keystrokes to execute a list item.

How to get it working:


1) Save the `alfred_modal_mode.applescript` somewhere on your machine and make it executable ([how to](https://support.apple.com/en-au/guide/terminal/apdd100908f-06b3-4e63-8a87-32e71241bab4/mac)).
2) Install [Karabiner elements](https://karabiner-elements.pqrs.org) .
3) Save the `alfred_modal_mode.json` file in `~/.config/karabiner/assets/complex_modifications`.
4) Edit line 15 of the `alfred_modal_mode.json` file, replacing `path/to/alfred_modal_mode.applescript` with the location of the file from step 1 (dont delete the single quotes though).
5) Import the `alfred_modal_mode.workflow` workflow into Alfred.
6) Now pressing `control` + `option` + `shift` + `command` + `A` will launch a modal menu, and pressing 1 - 9 on your keypad will instantly launch one of the list items.
