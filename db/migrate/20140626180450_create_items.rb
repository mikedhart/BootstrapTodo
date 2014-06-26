class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :list_id, null: false, default: 0
      t.integer :status_id, null: false, default: 0
      t.string :name, null: false, default: ""
      t.integer :rank, null: false, default: 0

      t.timestamps
    end
  end
end
