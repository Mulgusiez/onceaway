class RequestMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.request_mailer.new_request.subject
  #
  def new_request(hash = {})

    @name = hash[:new_request][:name]
    @email = hash[:new_request][:email]
    @phone_number = hash[:new_request][:phone_number]
    @location = hash[:new_request][:location]
    @description = hash[:new_request][:description]

    mail(
      to: 'mulliez.augustin@gmail.com',
      subject: 'Nouvelle demande de voyage',
      from: 'marie@onceaway.com'
    )
  end
end
