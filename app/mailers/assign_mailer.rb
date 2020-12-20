class AssignMailer < ApplicationMailer
  default from: 'from@example.com'

  def assign_mail(email, password)
    @email = email
    @password = password
    mail to: @email, subject: I18n.t('views.messages.complete_registration')
  end

  def change_leader_mail(email, team_name)
    @team_name = team_name
    mail to: email, subject: "リーダーに任命されました"
  end
end
