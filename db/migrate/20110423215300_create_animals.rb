class CreateAnimals < ActiveRecord::Migration
  def self.up
    create_table :animals do |t|
      t.string :name
      t.string :common
      t.string :trend
      t.string :category
      t.string :link
      t.string :image_license
      t.string :author

      t.timestamps
    end
  end

  def self.down
    drop_table :animals
  end
end
