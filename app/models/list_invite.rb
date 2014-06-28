class ListInvite < ActiveRecord::Base
	belongs_to :user
	belongs_to :list

	after_create :send_email

	private

	def send_email
		ListInviteMailer.invite_email(self).deliver
	end
end
