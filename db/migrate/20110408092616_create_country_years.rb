class CreateCountryYears < ActiveRecord::Migration
  def self.up
    create_table :country_years do |t|
      t.int :number
      t.int :emission
      t.float :sufficiency
      t.float :area_habitats
      t.float :area_habitats_percent

      t.timestamps
    end
  end

  def self.down
    drop_table :country_years
  end
end
