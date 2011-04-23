import re
import urllib
import sys
def csv_reader(data):
	"""docstring for csv_reader"""
	pass
	infile = open(data, "r")
	lines = infile.readlines()
	infile.close()
	out_hash = {}
	for i in lines:
		x = i.split(";")
		x.pop(0)
		for j in x:
			name = j.rstrip()
			out_hash[name] = []
	return out_hash


def species_getter(in_hash):
	apiurl = "http://api.iucnredlist.org/go/"
	out_hash = {}
	errors = []
	for species in in_hash:
		name = species.replace(" ","-")
		print apiurl+name
		url = urllib.urlopen(apiurl+name)
		result = "".join(url.readlines())
		#print result
		if result.find("but something went wrong") != -1:
			errors.append(species)
		else:	
			trend_start = result.find("<div id='population_trend'>")
			if trend_start != -1:
				trend_stop = result.find("</div>",trend_start)
				trend = result[trend_start+27:trend_stop]
			else:
				trend = ""
			#print trend
		
			category_start = result.find("<div id='red_list_category_title'>")
			category_stop = result.find("</div>",category_start)
			category = result[category_start+34:category_stop]
			#print category
		
			common_start = result.find("<div class='lang'>English</div>")
			if common_start != -1:
				common_stop = result.find("</li>",common_start)
				common = result[common_start+82:common_stop]	
			else: 
				common = ""
			#print common
		
			link_start = result.find(""">http://www.iucnredlist.org/apps/redlist/details/""")
			link_stop = result.find("</a>",link_start)
			link = result[link_start+1:link_stop]
			#print link
		
			out_hash[species] = [common,category,trend,link]
	print "Species not found using IUCN:"
	print errors
	return out_hash


def csv_writer(data,filehandle):
	"""docstring for csv_writer"""
	pass
	writing = open(filehandle,"w")
	for x in data:
		writing.write(x+";"+data[x][0]+";"+data[x][1]+";"+data[x][2]+";"+data[x][3]+"\n")
	writing.close()

csv = csv_reader(sys.argv[1])
data = species_getter(csv)
csv_writer(data,sys.argv[2])