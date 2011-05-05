#!/usr/bin/ruby

myoutputfile = File.new("years.csv","a+")
directory = Dir.new(Dir.pwd)
# iterate over contents of working directory
directory.each do |d|
	if d.include? "20"
		# now open the file and parse through it
		yearname = d[0,4]
		yearstring = ""
        toparse = File.open(d,"r")
		# go through each line
		toparse.each_line do |line|
			# does it have the desirable html-tags?
			if line.include?("<img") or line.include?("<map") or line.include?("<area") or line.include?("</img") or line.include?("</map") or line.include?("</area")
				line = line.sub("\n","")
				yearstring += line
			end
		end
		# write output, ; as delimiter
		myoutputfile.write(yearname + ";" + yearstring + "\n")
		toparse.close()
	end
end
myoutputfile.close()
