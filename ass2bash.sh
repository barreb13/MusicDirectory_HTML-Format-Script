#!/bin/bash
#Brent Barrese - 10/26/2020

#find all song files and pipe to awk script
find . -type f | grep .ogg | awk -f ass2awk.awk