#!/bin/bash
#set -x


path=""
background=""

while getopts "b:p::h" opt; do
    case $opt in
        p)
            path=$OPTARG
            ;;
		b)
			background=$OPTARG
			;;
        h)
            echo "the following arguments are:
                -p /path/to/folder"
            exit 1
                ;;
        *)
            echo "Invalid option: -$OPTARG"
            exit 1
            ;;
    esac
done


# Check if file path is provided
if [ -z "$path" ]; then
    echo "Folder path is required."
    exit 1
fi

for file in "$path"*; do
    if [[ -f "$file" ]]; then
        #echo "Processing file: $file"
        # Perform actions on the file
        ./processImage $background $file 
    fi
done
