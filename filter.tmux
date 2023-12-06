#!/usr/bin/env bash
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

bind-key F command-prompt -p "Filter pattern:" "run-shell bash '$CURRENT_DIR/live-filter.bash %% #{pane_id}'"
