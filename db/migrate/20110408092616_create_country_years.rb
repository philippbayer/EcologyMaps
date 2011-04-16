class CreateCountryYears < ActiveRecord::Migration
  def self.up
    create_table :country_years do |t|
      t.belongs_to :country
      t.string :number
      t.string :emission
      t.string :sufficiency
      t.string :area_habitats_scaled
      t.string :area_habitats_percent

      t.timestamps
    end
  end

  def self.down
    drop_table :country_years
  end
end
