class CreateLists < ActiveRecord::Migration
  def self.up
    create_table :lists do |t|
      t.string :title
      t.references :user
      t.boolean :change_status
      t.integer :order_id

      t.timestamps
    end
  end

  def self.down
    drop_table :lists
  end
end
