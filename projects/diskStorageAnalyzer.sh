#!/bin/bash

varOcg="Disk Storage Report"

echo "Getting Disk Information....."

function totalDiskUsage() {
    echo -e "Total Disk Usage:"
    df -h --total | grep "total"
}

function largestDirectories() {
    echo -e "Top 10 Largest Directories:"
    du -ah / 2>/dev/null | sort -rh | head -n 10
}

function largestFiles() {
    echo -e "Top 10 Largest Files:"
    find / -type f -exec du -ah {} + 2>/dev/null | sort -rh | head -n 10
}

function partitionUsage() {
    echo -e "Partition Usage:"
    df -h | awk '{print $1, $5, $6}' | column -t
}

function deleteLargeFile() {
    echo -e "Delete Large File (Optional)"
    read -p "Enter the full file path to delete (or press Enter to skip): " filePath
    if [ -n "$filePath" ]; then
        rm -i "$filePath" && echo "File deleted successfully!" || echo "Failed to delete file!"
    else
        echo "Skipping file deletion."
    fi
}

totalDiskUsage
partitionUsage
largestDirectories
largestFiles
deleteLargeFile

echo -e "Analysis Complete!"

