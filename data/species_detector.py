import sys

infile = open(sys.argv[1],"r")
data = infile.readlines()

species = []

for i in data:
	x = i.split(";")
	x.pop(0)
	for j in x:
		species.append(j)
unique_species = list(set(species))
unique_species.sort()

for i in unique_species:
	print i
