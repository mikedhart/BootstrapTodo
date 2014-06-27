class RemoveStatusIdFromLists2 < ActiveRecord::Migration
  def change
		remove_column :lists, :status_id
  end
end
