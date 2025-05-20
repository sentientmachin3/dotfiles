#!/bin/bash

set -euo pipefail

repos=$(ls -1 $HOME/repos)
worktrees=()
for repo in $repos; do
    if [ -d "$HOME/repos/$repo/worktrees" ]; then
        for worktree in $(ls -1 $HOME/repos/$repo/worktrees); do
            worktrees+=( "$repo/$worktree" )
        done
    fi
done

selected=$(printf '%s\n' "${worktrees[@]}" | fzf --cycle)
if [[ $selected == "" ]]; then
    echo $HOME
else
    echo "$HOME/repos/$selected"
fi
