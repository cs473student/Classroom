class CreateLoginseatings < ActiveRecord::Migration
  def self.up
    create_table :loginseatings do |t|
	  t.integer :row
	  t.integer :column
	  t.string :studentfirst
	  t.string :studentlast
	  
      t.timestamps
    end
  end

  def self.down
    drop_table :loginseatings
  end
end
