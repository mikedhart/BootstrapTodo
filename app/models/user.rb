class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	has_many :owned_lists
	has_many :list_users
	has_many :lists, through: :list_users

	after_create :append_invites

	private

	def append_invites
		ListInvite.where(email: email).all.each do |i|
			ListUser.create!(list: i.list, user: self)
			i.update(complete: true)
		end
	end
end
