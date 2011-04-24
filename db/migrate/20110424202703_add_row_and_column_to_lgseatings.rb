class AddRowAndColumnToLgseatings < ActiveRecord::Migration
  def self.up
    add_column :lgseatings, :row, :integer
    add_column :lgseatings, :column, :integer
  end

  def self.down
    remove_column :lgseatings, :column
    remove_column :lgseatings, :row
  end
end
