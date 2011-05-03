class PopulateAnimals < ActiveRecord::Migration
  def self.up
    data = csv_parser(RAILS_ROOT + "/data/animal_data_details.csv")

    data.each_pair do |key, value|
      new_animal = Animal.new()
      new_animal.name = key
      new_animal.common = value[0]
      new_animal.category = value[1]
      new_animal.trend = value[2]
      new_animal.link = value[3].strip()
      new_animal.save
    end
  end

  def self.down
	p "nothing to do"
  end
end
