class AssignMailer < ApplicationMailer
  default from: 'from@example.com'

  def assign_mail(email, password)
    @email = email
    @password = password
    binding.pry
    mail to: @email, subject: I18n.t('views.messages.complete_registration')
  end
end
