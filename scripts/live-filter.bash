#!/usr/bin/env bash

if [ $# -lt 1 ]; then
    echo "Usage: $0 pattern [tmux-pane]"
    exit 1
fi

PATTERN="$1"
TMUX_PANE="$2"
TMP_FILE="/tmp/tmux-pane-content-$(date +%s).log"

touch "$TMP_FILE"

# Save existing
tmux capture-pane -p -t "$TMUX_PANE" | grep --color=always -i "$PATTERN" > "$TMP_FILE"

# Start piping
tmux pipe-pane -o -t "$TMUX_PANE" "grep --color=always '"$PATTERN"' >> $TMP_FILE"

# Create a new window, after close stop piping and remove the tmp file
tmux new-window "trap 'tmux pipe-pane -t "$TMUX_PANE"; ls -al $TMP_FILE; rm -f $TMP_FILE;ls -al $TMP_FILE;exit 1' SIGINT; tail -n +1 -f \"${TMP_FILE}\""

