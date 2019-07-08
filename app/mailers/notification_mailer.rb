class NotificationMailer < ApplicationMailer
  default from: "no-reply@napaeatsapp.com"



  def comment_added
    mail(to: "debrunapp@gmail.com",
          subject: "A comment has been added to your place")
  end
end
