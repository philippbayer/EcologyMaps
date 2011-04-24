class CountryYear < ActiveRecord::Base
	belongs_to :country
	has_many :animal_joins
end
