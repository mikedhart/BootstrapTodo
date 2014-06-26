class Item < ActiveRecord::Base
	belongs_to :list
	belongs_to :status

	validates :list, presence: true
	validates :name, presence: true
	validates :status, presence: true

	def complete?
		status == Status.complete
	end
end
