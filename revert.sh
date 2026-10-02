#!/bin/bash

git restore --source=baseline --staged --worktree -- .
git commit -m "Revert"
