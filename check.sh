#!/bin/bash
cd path
if git status; then
    echo "Repository Correct"
else
    echo "Error: the Path you entered was not a Repository"
    exit 1
fi
