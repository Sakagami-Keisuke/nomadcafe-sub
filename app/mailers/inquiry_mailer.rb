class InquiryMailer < ApplicationMailer
  def send_mail(inquiry)
    @inquiry = inquiry
    mail(
      from: 'example@gmail.com',
      to:   'iwayasunset@gmail.com',
      subject: 'NoadCafeにお問い合わせありです'
    )
  end
end
