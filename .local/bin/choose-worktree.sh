#!/bin/bash

set -euo pipefail

projects=$(ls -1 $HOME/projects)
worktrees=()
for repo in $projects; do
    if [ -d "$HOME/projects/$repo/worktrees" ]; then
        for worktree in $(ls -1 $HOME/projects/$repo/worktrees); do
            worktrees+=( "$repo/$worktree" )
        done
    else
        worktrees+=( "$repo" )
    fi
done

selected=$(printf '%s\n' "${worktrees[@]}" | fzf --cycle)
if [[ $selected == "" ]]; then
    echo $HOME
else
    echo "$HOME/projects/$selected"
fi
