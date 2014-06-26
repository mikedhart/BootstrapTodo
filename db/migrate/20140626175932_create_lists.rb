class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.integer :user_id, null: false, default: ""
      t.string :name, null: false, default: ""

      t.timestamps
    end
  end
end
