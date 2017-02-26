#!/bin/bash
# gosu does not set USER, so wrapped server in shell script
export USER=$1
# geometry default to HD with browser menu
tightvncserver -geometry 1800x960
