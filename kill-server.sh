#!/bin/bash

# pid=$(lsof -i:$1 -t); kill -TERM $pid || kill -KILL $pid

# kill -9 $(lsof -i:3000 -t) 2> /dev/null

lsof -i:$1 | grep LISTEN | awk '{print $2}' | xargs kill -9
