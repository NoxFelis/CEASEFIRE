#!/bin/bash
set -x

folder="out"
file=""
path=""
interval=0
rand=0
key=0
full=0
total=0

option_key_code() {
   ffmpeg -i $file -v warning -q:v 2 -vf select="eq(pict_type\,PICT_TYPE_I)" -vsync 0 $path%03d.jpg
}

option_full_code() {
    ffmpeg -i $file $path%05d.jpg
}

option_random_code() {
    n=0
    while [ $n -lt $rand ]
        do
            frame=$[ $RANDOM % $total + 1]
            echo $frame
            ffmpeg -i $file -v warning -vf "select=eq(n\,$frame)" -vframes 1 $path$frame.jpg
            (( n++ ))
        done
}

option_interval_code() {
    # ,format=yuv420p
    # ,setpts='$interval/FRAME_RATE/TB'
    #ffmpeg -i $file -vf "select=not(mod(n\, $interval))" -q:v 2 -vsync vfr $path%03d.jpg
    n=1
    while [ $n -lt $total ]
        do
            ffmpeg -i $file -v warning -vf "select=eq(n\,$n)" -vframes 1 $path$n.jpg
            n=$((n + $interval))
        done
}

# Parse command-line options
while getopts ":kfo:i:r:s::h" opt; do
    case $opt in
        o)  folder=$OPTARG
            echo $folder
            ;;
        i)  file=$OPTARG
            path=$(dirname $file)
            ;;
        r)  echo "random algo"
            rand=$OPTARG
            ;;
        s)  echo "interval algo"
            interval=$OPTARG
            ;;
        k)  echo "key algo"
            key=1
            ;;
        f)  echo "full algo"
            full=1
            ;;
        h)
            echo "the following arguments are:
                -i /path/to/file
                -o out folder name
                -r number of total frames with random algorithm 
                -s size of space interval between each frame
                -k key frame algorithm"
            exit 1
                ;;
        *)
            echo "Invalid option: -$OPTARG"
            exit 1
            ;;
    esac
done

folder="/$folder/"
path="${path}${folder}"
echo $path
mkdir $path


# Check if file path is provided
if [ -z "$file" ]; then
    echo "File path is required."
    exit 1
fi

echo "Total frames"
total=$(mediainfo --Output="Video;%FrameCount%" $file)
echo $total
echo "Frame rate"
mediainfo --Output="Video;%FrameRate%" $file

# Check if option is provided 

if [ "$key" -ne 0 ]; then
    option_key_code
elif [ "$full" -ne 0 ]; then
    option_full_code
elif [ "$rand" -ne 0 ]; then
    option_random_code
elif [ "$interval" -ne 0 ]; then
    option_interval_code
else
    echo "Invalid option"
    exit 1
fi

for file in "$path"*; do
    if [[ -f "$file" ]]; then
        #echo "Processing file: $file"
        # Perform actions on the file
        ./processImage background.jpg $file 
    fi
done
