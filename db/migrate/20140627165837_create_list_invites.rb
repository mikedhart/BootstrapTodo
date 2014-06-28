class CreateListInvites < ActiveRecord::Migration
  def change
    create_table :list_invites do |t|
      t.integer :list_id, null: false
      t.integer :user_id, null: false
      t.string :email, null: false
      t.boolean :complete, null: false, default: false

      t.timestamps
    end
  end
end
