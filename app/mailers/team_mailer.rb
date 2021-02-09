class TeamMailer < ApplicationMailer
  
  def mail_after_destroy(user)
    mail(to: user.email, subject: `the agenda has been destroyed`)
  end
end
