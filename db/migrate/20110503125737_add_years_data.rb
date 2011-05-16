class AddYearsData < ActiveRecord::Migration
  def self.up
	  data = csv_parser(RAILS_ROOT + "/data/habiyears.csv")

	  data.each_pair do |key, value|
		  newhabiyear = HabiYear.new()
		  newhabiyear.year = key
		  newhabiyear.imagemap = value
		  newhabiyear.save
	  end

	  data = csv_parser(RAILS_ROOT + "/data/suffyears.csv")
	  
	  data.each_pair do |key, value|
		  newsuffyear = SuffYear.new()
		  newsuffyear.year = key
		  newsuffyear.imagemap = value
		  newsuffyear.save
      end
  end

  def self.down
	  p "eeeeeeeee macarena"
  end
end
