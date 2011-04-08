class CreateMsgs < ActiveRecord::Migration
  def self.up
    create_table :msgs do |t|
      t.string :msg_text

      t.timestamps
    end
  end

  def self.down
    drop_table :msgs
  end
end
