class RenamePasswordToHashedPasswordUserAccess < ActiveRecord::Migration
  def self.up
	rename_column :users_accesses, :password, :hashed_password
  end

  def self.down
	rename_column :users_accesses, :hashed_password, :password
  end
end

