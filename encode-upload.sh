#! /bin/bash
echo "Encoding: $1" 
filename="$1"
basename="${filename%.*}"
#mp3encoded="$basename.mp3"
mp4encoded="$basename.m4a"
json="$basename.json"
#eval "lame --preset voice" ${filename} 
eval "nice -n 19 ffmpeg -i $filename  -c:a libfdk_aac -b:a 32k -cutoff 18000 $mp4encoded > /dev/null 2>&1"

echo "Upload: $encoded"  
eval "scp $json $mp4encoded username@server.com:~/smartnet-upload "

