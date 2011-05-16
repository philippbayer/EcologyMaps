class PopulateYears < ActiveRecord::Migration
  def self.up
	  create_table :habi_years do |t|
		  t.string :year
		  t.string :imagemap
		  t.string :data
	  end
	  change_column(:habi_years, :imagemap, :longtext)

	  create_table :suff_years do |t|
		  t.string :year
		  t.string :imagemap
		  t.string :data
	  end

	  change_column(:suff_years, :imagemap, :longtext)
  end

  def self.down
	  drop_table :years
  end
end
