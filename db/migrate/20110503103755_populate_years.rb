class PopulateYears < ActiveRecord::Migration
  def self.up
	  create_table :years do |t|
		  t.string :year
		  t.string :imagemap
		  t.string :data
	  end
  end

  def self.down
	  drop_table :years
  end
end
