class AddStatusIdToLists < ActiveRecord::Migration
  def change
    add_column :lists, :status_id, :integer, null: false
  end
end
