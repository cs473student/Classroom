class CreateLgseatings < ActiveRecord::Migration
  def self.up
    create_table :lgseatings do |t|
	  t.string :studentfirst
	  t.string :studentlast
	  
      t.timestamps
    end
  end

  def self.down
    drop_table :lgseatings
  end
end
