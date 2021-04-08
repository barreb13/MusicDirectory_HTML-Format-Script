# Project Title
Assignment 2 Media Server from CSS 390 Scripting Languages

# Description
This combines a small bash script with an awk script that will take input data from a directory (Music directory) and format it. The data will be organized alphabetically and formatted for HTML. It will produce a table that alphabetically lists every artist in the directory. For every artist, it will list their albums in alphabetical order. For every album, it will list the tracks in alphabetical or numerical order. The tracks will encapsulate a link to the file path.

The program will write to standard output which will allow the user to redirect as needed.

# How To Use
To use the scripts you will need to place them both inside of your Music directory. The directory must be in the format of Music --> Genre --> Artist --> Album --> Disk # (if applicable) --> song.

To run, open the terminal in Music directory and enter the command "bash ass2bash.sh" to the run the bash script. This script will invoke the awk script which does the majority of work.

You will need to direct output to .html or .txt depending on your specific need.

# Expectations
The correct file path format is expected in order for the script to run properly. The bash script and the awk script will be in the same directory. 

# Reflection
I did 1 solution in awk as I spent a lot of time early on in the project when I did not have the best idea of how to tackle it. This project taught me a lot about awk. I learned about the interaction between the shell, bash, and awk. It forced me to do a lot of independent study on how awk works and the capabilities it has. The biggest thing I learned and that was new to me was that awk uses associative arrays. These are different than the traditional arrays/vectors we are brought up using with numerical indexing. The syntax of the 3-level deep associative array I needed was so frustrating for me to try and figure out, but once I was shown it made a lot of sense. I did not think it could be that simple. 

This assignment also helped me understand the BEGIN and END blocks in an awk script along with the implicit loop in between these blocks. When I started this assignment I didn't have a grasp on it, but I was able to figure it out. 

I don't think there are any "gotchas" in this program, but I ended up using a different sort method than what was shown. I used the gawk command PROCINFO. Since I did not use the asort or asorti function which would have returned an integer I could use for my rowspan, which was needed for the html table format, I learned there was a function in awk that returns the length of the array. I was able to use this for my rowspan variable. This was more intuitive to me and aligned more with traditional vectors. I created an additional associative array at the beginning of the awk program that will store all the filepaths needed to call upon later. This was great being able to have an associative array rather than a numerically indexed one.

# References Used 
https://www.gnu.org/software/gawk/manual/html_node/Controlling-Scanning.html 
https://www.gnu.org/software/gawk/manual/html_node/Escape-Sequences.html 
https://www.gnu.org/software/gawk/manual/html_node/Controlling-Array-Traversal.html