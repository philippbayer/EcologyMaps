class CreateCountryYears < ActiveRecord::Migration
  def self.up
    create_table :country_years do |t|
      t.string :number
      t.float :emission
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
