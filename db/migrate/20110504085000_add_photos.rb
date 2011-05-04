class AddPhotos < ActiveRecord::Migration
  def self.up
	  data = csv_parser(RAILS_ROOT + "/data/animal_pictures.csv")

	  data.each_pair do |key, value|
		  animal = Animal.find_by_name(key)
		  animal.image_link = value[0]
		  animal.image_license = value[1]
		  animal.author = value[2]
		  animal.author_link = value[4]
		  animal.save
	  end
  end

  def self.down
	  p "eeeeeeeee macarena"
  end
end
