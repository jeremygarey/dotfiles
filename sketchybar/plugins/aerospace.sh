#!/usr/bin/env bash

# This script is triggered on workspace changes
focused_workspace=$FOCUSED_WORKSPACE

if [ -n "$focused_workspace" ]; then
    # Update the label to show the focused workspace
    sketchybar --set current_space label="$focused_workspace"
else
    # Fallback in case no workspace is focused
    sketchybar --set current_space label="No Workspace"
fi