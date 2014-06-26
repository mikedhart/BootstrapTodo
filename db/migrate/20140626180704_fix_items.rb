class FixItems < ActiveRecord::Migration
  def change
		change_column :items, :status_id, :integer, null: false
		change_column :items, :name, :string, null: false
		change_column :items, :list_id, :integer, null: false
  end
end
