class AddStartData < ActiveRecord::Migration
  def self.up
    data = csv_parser(RAILS_ROOT + "/data/areadata_input.csv")

    data.each_pair do |key, value|
      new_country = Country.new()
      new_country.handle = key
      new_country.name = value[0]
      area = value[-1].strip()
      new_country.area = area
      new_country.save
      new_country = Country.find_by_name(value[0])

      for i in 0..7
      new_country.country_years << CountryYear.new(:number => 2010-i,
                                  :emission => value[9+i],
                                  :sufficiency => value[17+i],
                                  :area_habitats_scaled => value[1+i],
                                  :area_habitats_percent => value[25+i])
      end
      new_country.save
    end
  end

  def self.down
	p "nothing to do"
  end
end
