class CreateCountries < ActiveRecord::Migration
  def self.up
    create_table :countries do |t|
      t.string :handle
      t.string :name
      t.string :area
      t.float :emission_target

      t.timestamps
    end
  end

  def self.down
    drop_table :countries
  end
end
