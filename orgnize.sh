#!/bin/bash

# File Structure Reorganization Script
# This script renames files for consistent naming convention
# Backup folder will NOT be touched

echo "Starting file reorganization..."
echo "Backup folder will be preserved as-is"

# Create a function to safely rename files
rename_file() {
    local old_name="$1"
    local new_name="$2"
    
    if [ -f "$old_name" ]; then
        if [ "$old_name" != "$new_name" ]; then
            mv "$old_name" "$new_name"
            echo "Renamed: $old_name -> $new_name"
        else
            echo "No change needed: $old_name"
        fi
    else
        echo "File not found: $old_name"
    fi
}

# Main directory files - standardizing to consistent length format
echo "Reorganizing main directory markdown files..."

rename_file "01-introduction.md" "01-git-introduction.md"
rename_file "02-types-of-vcs.md" "02-version-control-types.md"
rename_file "03-features-of-git.md" "03-git-core-features.md"
rename_file "04-git lifecycle.md" "04-git-file-lifecycle.md"
rename_file "05-git-installation.md" "05-git-installation-guide.md"
rename_file "06-basic git command.md" "06-git-basic-commands.md"
rename_file "07-git log.md" "07-git-log-commands.md"
rename_file "08-git diff .md" "08-git-diff-commands.md"
rename_file "09-helix-tool.md" "09-git-helix-editor.md"
rename_file "10-rm command.md" "10-git-remove-commands.md"
rename_file "11-git-checkout.md" "11-git-checkout-guide.md"
rename_file "12-git-reference-master-and-head.md" "12-git-references-master-head.md"
rename_file "13-git-reset.md" "13-git-reset-commands.md"
rename_file "14-git utility.md" "14-git-utility-commands.md"
rename_file "15-git-aliasing.md" "15-git-aliases-config.md"
rename_file "16-gitignore.md" "16-git-ignore-patterns.md"
rename_file "17-gitignore-for-directories.md" "17-git-ignore-directories.md"
rename_file "18-branching-and-merging.md" "18-git-branch-merge.md"
rename_file "19-git-workflow.md" "19-git-workflow-guide.md"
rename_file "20-branching example.md" "20-git-branch-examples.md"
rename_file "22-git-additional-notes-02.md" "21-git-additional-notes-2.md"
rename_file "24-git-additional-notes-04.md" "22-git-additional-notes-4.md"
rename_file "25-git-stash.md" "23-git-stash-commands.md"
rename_file "27-git-tagging.md" "24-git-tagging-guide.md"
rename_file "28-need-of-remote-repositories.md" "25-git-remote-repositories.md"

# Handle the standalone files
rename_file "git 03.md" "26-git-miscellaneous-notes.md"

echo ""
echo "File reorganization completed!"
echo ""
echo "Summary of changes:"
echo "- All markdown files now have consistent naming format"
echo "- Sequential numbering from 01 to 26"
echo "- Similar length names for better organization"
echo "- Backup folder remains untouched"
echo "- VCS directory and images directory remain untouched"
echo ""
echo "Files that were NOT modified:"
echo "- backup_20250601_170253/ (entire directory preserved)"
echo "- VCS/ (practice projects directory)"
echo "- images/ (image assets directory)"
echo "- Notes.pdf"
echo "- README.md"
echo "- orgnize.sh"