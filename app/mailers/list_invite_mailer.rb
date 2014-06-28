class ListInviteMailer < ActionMailer::Base
  default from: "noreply@dingy.co"

	def invite_email(invite)
    @invite = invite

		mail(to: @invite.email, subject: "Join My List On Dinghy!")
  end
end
