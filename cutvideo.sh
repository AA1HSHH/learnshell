inputFilename="./test.mp4" #改为视频路径
i=0
cmd="ffprobe -v error -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 -sexagesimal $inputFilename"
endtime=$(eval $cmd)
timearr=(00:00:00 00:10:22 00:20:29 $endtime)   #改为(00:00:00 间隔1 间隔2 ... $endtime) 
length=${#timearr[*]}
let "length--"
while(($i<$length))
do
    ffmpeg -i $inputFilename -ss ${timearr[$i]} -to ${timearr[$(($i+1))]}  -c copy -copyts $i.mp4
    let "i++"
done
echo "Video cutting finished."


