#!/usr/bin/python

import sys

toparse = open(sys.argv[1],"r")
for line in toparse:
	line = line.replace("\n","")
	if "type" in line:
		# Cut off beginning of line and end of line, replace by own stuff
		line = line.replace("\n","") # for second \n
		line = line.replace("g.createPath(",",") # that should take care of the beginning
		# the following should take care of the end
		line = line.replace(line[line.find("}"):],',"stroke-width":"0.172",stroke:"#000",fill:"#fff"},')
		line = line.replace("\n","")
	print line
print "};"
