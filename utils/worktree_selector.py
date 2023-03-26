#!/usr/bin/env python3

from pathlib import Path
from pyfzf.pyfzf import FzfPrompt
import argparse
import subprocess

arg_parser = argparse.ArgumentParser(
    "worktree_selector.py", "Open a new tmux session or update the current one"
)
arg_parser.add_argument(
    "-s",
    "--sessionize",
    help="Force opening a new session",
    dest="sessionize",
    action="store_true",
)
args = arg_parser.parse_args()

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


selected_list = fzf.prompt(labels.keys(), "--cycle")
if len(selected_list) == 0:
    exit()
selected = selected_list[0]
selected_index = labels[selected]
full_worktree_path = Path(
    repos_path
    / worktrees[selected_index]["repo"]
    / worktrees[selected_index]["worktree"]
)

if args.sessionize:
    subprocess.check_call(
        [
            "tmux",
            "neww",
            "-n",
            worktrees[selected_index]["worktree"],
            "-c",
            full_worktree_path.as_posix(),
        ]
    )
else:
    print(full_worktree_path.as_posix())
