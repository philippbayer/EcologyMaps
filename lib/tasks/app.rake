namespace :app do
  desc "Parse csv-file, add data to corresponding tables"
  task :parse => :environment do
  data = csv_parser
  
  data.each_pair do |key, value|
    new_country = Country.new()
    new_country.handle = key
    new_country.name = value[0]
    new_country.save
    new_country = Country.find_by_name(value[0])
    
    for i in 0..7
    new_country.country_years << CountryYear.new(:number => 2010-i.to_float,
                                :emission => value[9+i].to_float,
                                :sufficiency => value[17+i].to_float,
                                :area_habitats_scaled => value[1+i].to_float,
                                :area_habitats_percent => value[25+i].to_float)
    end
    new_country.save
  end
  end
  
  
  def csv_parser
    csvfile = File.open("/Users/bastian/Documents/open_data_ecology/EcologyMaps/data/areadata_input.csv", "r")
    lines = csvfile.readlines
    hash = {}

    lines.each do |line|
      if line["Short"] == nil
        line.chop
        line_array = line.split(",")
        hash[line_array.at(0)] = line_array[1..-1]
      end
    end
    hash
  end
end
