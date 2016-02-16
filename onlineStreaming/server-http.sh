#!/bin/bash

exec vlc-wrapper --sout '#transcode{vcodec=h264,vb=0,scale=0,acodec=mpga,ab=128,channels=2,samplerate=44100}:http{mux=ffmpeg{mux=flv},dst=:8888/}' :ttl=5 $1
