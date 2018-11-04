#!/usr/bin/env bash

# start the X virtual frame buffer
Xvfb :88 -screen 0 800x600x24 &
export DISPLAY=:88

# run the python app which plots a sine wave
python3 main.py &
sleep 1

# take screenshot
xwd -root -out ./mount/shot.xwd

# give main.py some time to return gracefully
sleep 3

# view screenshot later with
# xwud -in ./mount/shot.xwd

# or convert it to JPEG format with ImageMagick convert tool
# convert mount/shot.xwd shot.jpg
