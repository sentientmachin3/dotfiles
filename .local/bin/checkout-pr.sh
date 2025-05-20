#!/bin/bash

# Checkout a PR using fzf and the github CLI to open a worktree

set -euo pipefail

selected_pr=`gh pr list | cut -f 1,3 | fzf`
pr_no=`echo $selected_pr | cut -f1 -d " "`
path=`echo $selected_pr | cut -f2 -d " " | cut -f2 -d "/"`
gh worktree pr $pr_no $path > /dev/null

echo $path

