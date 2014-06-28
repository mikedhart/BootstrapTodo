class List < ActiveRecord::Base
	belongs_to :user
	has_many :items
	has_many :list_users
	has_many :users, through: :list_users

	validates :user, presence: true
	validates :name, presence: true

	accepts_nested_attributes_for :items

	before_save :mark_items_complete

	private

	def mark_items_complete
		items.each{ |i| i.update_status }
	end
end
