import sys
import commands
infile = open(sys.argv[1],"r")
lines = infile.readlines()

fixlines = []

for i in lines:	
	newline = i.split(";")
	if newline[2].find("CC") != -1 or newline[2].find("PD") != -1 or newline[4].upper().find("USABLE") != -1:
		print newline[2]
		commands.getstatusoutput("curl "+newline[1]+" > pictures/"+newline[0].replace(" ","_")+".jpeg")
