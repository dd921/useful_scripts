#!/bin/bash


############## How to Use (Mac/Linux) ##############
# 1. Open a Terminal
# 2. cd /<path to your move_monitor.sh file>
# 3. Run bash move_monitor.sh --<enter your flag here>
# 4. Your monitor alignment position should be updated
#    to left/right/center.


# This script takes full advantage of the `displayplacer` utility package
# To install displayplacer follow the instructions on their README.md file
# https://github.com/jakehilborn/displayplacer#readme

# Default value for the monitor position flag
position=""

# Parse command-line flags
while [[ $# -gt 0 ]]; do
    case "$1" in
        --right)
            position="right"
            ;;
        --left)
            position="left"
            ;;
        --center)
            position="center"
            ;;
        *)
            echo "Invalid flag: $1"
            exit 1
            ;;
    esac
    shift
done

# Execute commands based on the position flag
if [ "$position" = "right" ]; then
    echo "Moving monitor screen position to RIGHT of Macbook Pro Screen"
    displayplacer "id:37D8832A-2D66-02CA-B9F7-8F30A301B230 res:1440x900 hz:60 color_depth:8 enabled:true scaling:on origin:(0,0) degree:0" "id:C65909B4-577C-F817-0857-D6964E3302DB res:1920x1080 hz:60 color_depth:7 enabled:true scaling:on origin:(1440,-180) degree:0"
    # Command for right position
elif [ "$position" = "left" ]; then
    echo "Moving monitor screen position to LEFT of Macbook Pro Screen"
    displayplacer "id:37D8832A-2D66-02CA-B9F7-8F30A301B230 res:1440x900 hz:60 color_depth:8 enabled:true scaling:on origin:(0,0) degree:0" "id:C65909B4-577C-F817-0857-D6964E3302DB res:1920x1080 hz:60 color_depth:7 enabled:true scaling:on origin:(-1920,-271) degree:0"
    # Command for left position
elif [ "$position" = "center" ]; then
    echo "Moving monitor screen position to CENTER of Macbook Pro Screen"
    displayplacer "id:37D8832A-2D66-02CA-B9F7-8F30A301B230 res:1440x900 hz:60 color_depth:8 enabled:true scaling:on origin:(0,0) degree:0" "id:C65909B4-577C-F817-0857-D6964E3302DB res:1920x1080 hz:60 color_depth:7 enabled:true scaling:on origin:(-247,-1080) degree:0"
    # Command for center position
else
    echo "Please specify a valid position flag: --right, --left, or --center"
    exit 1
fi
