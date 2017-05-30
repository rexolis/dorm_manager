class Notifier < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.gmail_message.subject
  #
  def gmail_message
    @greeting = "Hi"
    subject       "mailer via gmail"
    recipients    "jftpaner@gmail.com"
    from          "administrator@ddms.com"
    sent_on       Time.now

    mail to: "jftpaner@gmail.com"
  end
end
