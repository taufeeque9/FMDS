#!/bin/bash

inotifywait -rm /home/ -e create -e moved_to -e modify |
    while read directory action file; do
    	# do something with the file
        echo "file '$file' '$action' in '$directory'"
    done

