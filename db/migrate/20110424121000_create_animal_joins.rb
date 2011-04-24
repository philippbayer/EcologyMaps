class CreateAnimalJoins < ActiveRecord::Migration
  def self.up
    create_table :animal_joins do |t|
      t.belongs_to :country_year
      t.belongs_to :animal
      t.timestamps
    end
  end

  def self.down
    drop_table :animal_joins
  end
end
