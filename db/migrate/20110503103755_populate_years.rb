class PopulateYears < ActiveRecord::Migration
  def self.up
	  create_table :years do |t|
		  t.string :year
		  t.string :imagemap
		  t.string :data
	  end

	  change_column(:years, :imagemap, :longtext)
  end

  def self.down
	  drop_table :years
  end
end
