class PictureMailer < ApplicationMailer
  def picture_mail(picture)
  @picture = picture
  mail to: "domelisa@ymail.com", subject: "Inquiry confirmation email"
   end

end
