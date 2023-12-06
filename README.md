# tmux filter plugin
This plugin adds an option to filter your current buffer by some text/pattern. I was missing the feature from the vscode terminal when viewing dev server logs in tmux, so I added it in tmux.

## Installation
- Install [TPM](https://github.com/tmux-plugins/tpm).
- Add the following line to the top of your tmux file:
```bash
set -g @plugin 'MaximilianGaedig/tmux-filter'
```

## Usage
- press `prefix` + <kbd>F</kbd>
- enter the grep pattern you want to search by
- a new window opens which shows you all the lines in the buffer that match the pattern
- there you can use normal tmux copy mode to scroll up/down and copy and whatever you want to do
- to exit it just do Ctrl+C and you're back to the unfiltered view

## Contributing
If you find a bug/feature you think this should have please feel free to open a pull request or issue :)
