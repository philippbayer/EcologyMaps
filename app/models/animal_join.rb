class AnimalJoin < ActiveRecord::Base
	belongs_to :country_year
	belongs_to :animal
end
