#!/usr/bin/env bash
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

tmux bind F command-prompt -p "Filter pattern:" "run-shell 'bash $CURRENT_DIR/scripts/live-filter.bash \"%%\" #{pane_id}'"
