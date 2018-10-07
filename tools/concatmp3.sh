#!/bin/bash
NAME=$(printf '%q\n' "${PWD##*/}")
ffmpeg -f concat -safe 0 -i <(for f in ./*.mp3; do echo "file '$PWD/$f'"; done) -c copy $NAME.mp3
#echo "FolderName $NAME"
