class AgendaMailer < ApplicationMailer
  default from: 'from@example.com'

  def deleted_notify(agenda_title, members)

    @agenda_title = agenda_title
    members.each do |email|
      @email = email[:email]
      mail to: @email, subject: "アジェンダが削除されました"
    end
  end
end
