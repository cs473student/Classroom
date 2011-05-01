class AddUsernameToLgseating < ActiveRecord::Migration
  def self.up
    add_column :lgseatings, :username, :string, :unique => true
  end

  def self.down
    remove_column :lgseatings, :username
  end
end

