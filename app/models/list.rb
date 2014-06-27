class List < ActiveRecord::Base
	belongs_to :user
	has_many :items

	validates :user, presence: true
	validates :name, presence: true

	accepts_nested_attributes_for :items

	before_save :mark_items_complete

	private

	def mark_items_complete
		items.each{ |i| i.update_status }
	end
end
