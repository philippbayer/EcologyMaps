class PopulateAnimalJoins < ActiveRecord::Migration
  def self.up
    data = csv_parser(RAILS_ROOT + "/data/animal_data_transposed.csv")

    data.each_pair do |key, value|
      handledate = key.split("_")
      handle = handledate[0]
      date = handledate[1]
      country_year_id = Country.find_by_handle(handle).country_years.find_by_number(date).id
      value.each do |name|
        name = name.strip()
        if name != "-"
          if name != ""
            if name != "\n"
              animal_id = Animal.find_by_name(name).id
              new_join = AnimalJoin.new()
              new_join.country_year_id = country_year_id
              new_join.animal_id = animal_id
              new_join.save
            end
          end
        end
      end
    end
      
  end

  def self.down
	p "nothing to do"
  end
end
