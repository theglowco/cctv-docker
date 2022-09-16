#!/bin/sh

# mjpeg
#/usr/bin/vlc --intf dummy rtsp://$CAMERAUSER:$CAMERAPASSWORD@$CAMERAIP:$CAMERAPORT$CAMERASTREAM --sout '#transcode{vcodec=mjpg,scale=1.0,acodec=none}:standard{access=http{mime=multipart/x-mixed-replace;boundary=--7b3cc56e5f51db803f790dad720ed50a},mux=mpjpeg,dst=:8080/}'

# hls 
sleep 5
cp index.html ./html/index.html

/usr/bin/vlc --intf dummy rtsp://$CAMERA_USER:$CAMERA_PASSWORD@$CAMERA_IP:$CAMERA_PORT/Streaming/channels/$CAMERA_STREAM --sout '#std{access=livehttp{seglen='"$SEGLEN"',delsegs=true,numsegs='"$NUMSEGS"',index=/home/streamer/html/camera'"$CAMERA_NUMBER"'.m3u8,index-url=camera'"$CAMERA_NUMBER"'-########.ts},mux=ts{use-key-frames},dst=/home/streamer/html/camera'"$CAMERA_NUMBER"'-########.ts}' vlc://quit
