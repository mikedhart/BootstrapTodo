class ListUser < ActiveRecord::Base
	belongs_to :list
	belongs_to :user

	validates :user, presence: true
	validates :list, presence: true
	validate :unique

	private

	def unique
		errors.add(:user, "already part of list") if ListUser.where(user: user, list: list).size > 0
	end
end
