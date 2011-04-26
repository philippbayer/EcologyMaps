#!/usr/bin/python

""" parses data from sys.argv[1], builds a red-to-green colorgradient based on numerical values """
""" Is written specifically for areadata.csv """
import sys

def is_number(n):
	""" Checks whether a given String is a number """
	try:
		float(n)
		return True
	except ValueError:
		return False

# parse the file, append every line cleaned up to an array
toParse = open(sys.argv[1])
lineArray = []
for line in toParse:
	line = line.replace(",",".")
	line = line.split(";")
	lineArray.append(line)


# build an array which holds the biggest value for each year (which is, due to the scaling, not 100
# array-structure: 2010, 2009, 2008, ..., 2003
yearsMaxArray = [0,0,0,0,0,0,0,0]
i = 0
while i <= 7:
	for country in lineArray:
		# has to be converted to float, else weird stuff happens and wrong numbers are stored (maybe length of strings is compared?)
   		if is_number(country[i+2]) and float(country[i+2]) > float(yearsMaxArray[i]):
			yearsMaxArray[i] = country[i+2]
	i += 1

# take the maximum value overall
overallMaxVal = 0.0
for country in lineArray:
	i = 2
	while i <= 9:
		if is_number(country[i]) and float(country[i]) > overallMaxVal:
			overallMaxVal = float(country[i])
		i += 1


# now we create our colour-gradient and map our values to em, with 100% green being the values in yearsMaxArray
# gradObject = pyx.color.gradient.RedGreen
# gradients range from 0 to 1, 1 being Green in this case
# print gradObject.getcolor(0.841).color
# in which we learn that the green value is just 0..1 and red 1-g

# now, we need to transform all of our countries values for each year according to the yearsMaxArray
i = 0
b = 2010
print "Note: the first value is for green in the rgb-spectrum, red is 1-green, e.g. the second value"
print "# ACCORDING TO EACH YEAR'S MAXIMUM"
for maxVal in yearsMaxArray:
	print b
	convert = 1.0/float(maxVal)
	# now multiply this with every value
	for country in lineArray:
		if is_number(country[i+2]):
			print country[1], ":", float(country[i+2])*convert,":",1-float(country[i+2])*convert
	i += 1
	b -= 1

print "# ACCORDING TO THE OVERALL MAXIMUM"
convert = 1.0/float(overallMaxVal)
i = 2
b = 2010
while i <= 9:
	print b
	for country in lineArray:
		if is_number(country[i]):
			print country[1], ":", float(country[i])*convert,":", 1-float(country[i])*convert
	i += 1
	b -= 1
