#!/usr/bin/awk -f
#Brent Barrese - 10/26/2020

BEGIN {  
    FS = "/"
}

#loop and get all data into albumsOf data structure
{albumsOf[$3][$4][$NF] = $0}
#put all filepaths in array to reference later
{filePath[$NF] = $0}

END {
    #PROCINFO to sort data structure    
    PROCINFO["sorted_in"] = "@ind_str_asc"

    #print boiler plate for header
    print "<html>"
    print " <meta http-equiv=\"content-type\" content=\"text/html; charset=utf-8\" />"
    print "<body>"
    print "<table border="1">"
    print " <tr>"
    print "  <th>Artist</th>"
    print "  <th>Album</th>"
    print "  <th>Tracks</th>"
    print " </tr>"

    #for each artist print
    for (artist in albumsOf){
        #get row length for html table format
        numRows = length(albumsOf[artist])
        print "<tr>"
        print "  <td rowspan="numRows">"artist"</td>"
        for (album in albumsOf[artist]){
            print "  <td>"album"</td>"
            print "  <td>"
            print "   <table border="0">"
            for (track in albumsOf[artist][album]){
                print "    <tr><td><a href="filePath[track]">"track" </a></td></tr>"
           }
           print "   </table>"
           print "  </td>"
           print " </tr>"
           print " <tr>"
        }
    }

    #print end boiler plate
    print "</table>"
    print "</body>"
}
