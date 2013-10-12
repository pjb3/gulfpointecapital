class ContactMailer < ActionMailer::Base
  default from: "website@gulfpointecapital.com"

  def contact(params)
    @params = params
    mail from: params[:email],
         to: "jwold@gulfpointecapital.com",
         subject: 'Contact Us'
  end
end
