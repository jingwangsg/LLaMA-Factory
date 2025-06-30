#!/bin/bash

# Script to apply transformers patch to the transformers library

# Check if patch file exists
if [ ! -f "transformers_changes.patch" ]; then
    echo "Error: transformers_changes.patch not found in current directory"
    exit 1
fi

# Check if libs/transformers directory exists
if [ ! -d "libs/transformers" ]; then
    echo "Error: libs/transformers directory not found"
    echo "Please ensure you have the transformers repository cloned in libs/transformers"
    exit 1
fi

# Change to transformers directory
cd libs/transformers || exit 1

# Check if it's a git repository
if [ ! -d ".git" ]; then
    echo "Error: libs/transformers is not a git repository"
    exit 1
fi

# Apply the patch
echo "Applying transformers patch..."
git apply ../../transformers_changes.patch

# Check if patch was applied successfully
if [ $? -eq 0 ]; then
    echo "Patch applied successfully!"
    
    # Show the changes
    echo -e "\nChanges applied:"
    git status --short
    
    # Show diff
    echo -e "\nDetailed changes:"
    git diff --stat
else
    echo "Error: Failed to apply patch"
    echo "You may need to resolve conflicts manually"
    exit 1
fi

# Return to original directory
cd ../..

echo -e "\nDone! The patch has been applied to libs/transformers"