class Item < ActiveRecord::Base
	belongs_to :list
	belongs_to :status

	validates :list, presence: true
	validates :name, presence: true
	validates :status, presence: true

	attr_accessor :mark_complete

	before_save :update_status
	after_initialize :check_if_complete

	def complete?
		status == Status.complete
	end

	def check_if_complete
		self.mark_complete = (status == Status.complete)

	end

	def update_status
		self.status = (self.mark_complete == "1") ? Status.complete : Status.active
	end
end
