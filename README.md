# usgs-dl-display
A technique to download &amp; display usgs topo data on private lan.

1. Download http://leafletjs.com/download.html and put files in a directory on the web server.
2. Use the download.pl tool above to download associated files for the various zoom levels.  Expected usage: download.pl [Map Type] [Zoom Level] [Max X] [Max Y]
3. Put the data directory in /data (relevant to test.html) and update test.html as appropriate for your environment.

Live Demo: http://a.zakz.us/test.html

<a href="https://codeclimate.com/github/japharl/usgs-dl-display"><img src="https://codeclimate.com/github/japharl/usgs-dl-display/badges/gpa.svg" /></a>
