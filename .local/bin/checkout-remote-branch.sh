#!/bin/zsh

chosen_branch_name=$(git branch --remote | sed "s|origin/||g" | fzf | sed "s/ //g")
worktree_dir_name=$(echo $chosen_branch_name | sed 's|^[^/]*/||')
git worktree add $worktree_dir_name $chosen_branch_name
