#!/usr/bin/env python3

from pathlib import Path
from pyfzf.pyfzf import FzfPrompt

fzf = FzfPrompt()
repos_path = Path.home() / "repos"
worktrees = {}
labels = {}

index = 0
for wt in repos_path.glob("./*/worktrees/*"):
    wt_path = wt.absolute().as_posix()
    repo_name = wt_path.split("/")[-3]
    wt_name = wt_path.split("/")[-1]
    worktrees[index] = {"repo": repo_name, "worktree": wt_name}
    label_key = f"{repo_name}/{wt_name}"
    labels[label_key] = index
    index += 1

selected = fzf.prompt(labels.keys(), "--cycle")[0]
selected_index = labels[selected]
full_worktree_path = Path(
    repos_path
    / worktrees[selected_index]["repo"]
    / worktrees[selected_index]["worktree"]
)
print(full_worktree_path.as_posix())
