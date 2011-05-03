class AddYearsData < ActiveRecord::Migration
  def self.up
	  data = csv_parser("/home/drsnuggles/Rails/euromap/data/years.csv")

	  data.each_pair do |key, value|
		  newyear = Year.new()
		  newyear.year = key
		  newyear.imagemap = value
		  newyear.save
	  end
  end

  def self.down
	  p "eeeeeeeee macarena"
  end
end
