class UserMailer < ApplicationMailer

  def account_activation(user)
    @user = user
    mail to: @user.email, subject: "Account activation"
  end
  
  def application_approval(user)
    @user = user
    # mail to: @user.email, subject: "Application approval"
    mail(to: @user.email, subject: "Application approval")
  end

  def password_reset
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end