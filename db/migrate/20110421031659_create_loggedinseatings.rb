class CreateLoggedinseatings < ActiveRecord::Migration
  def self.up
    create_table :loggedinseatings do |t|
	  t.string :studentfirst
	  t.string :studentlast
	  t.string :row
	  t.string :column

      t.timestamps
    end
  end

  def self.down
    drop_table :loggedinseatings
  end
end
