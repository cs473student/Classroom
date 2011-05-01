class CreateUsersAccesses < ActiveRecord::Migration
  def self.up
    create_table :users_accesses do |t|
	  t.string :username, :unique => true	  
      t.string :password
      t.string :firstname
      t.string :lastname

      t.timestamps
    end
  end

  def self.down
    drop_table :users_accesses
  end
end
