class UserMailer < ApplicationMailer

  def activation_needed_email(user)
    @user = user
    @url  = "http://localhost:3000/users/#{user.activation_token}/activate"
    mail(:to => user.email,
     :subject => "Welcome to My Awesome Site")
  end

  def activation_success_email(user)
    @user = user
    @url  = "http://localhost:3000/login"
    mail(:to => user.email,
         :subject => "Your account is now activated")
  end

  def reset_password_email(user)
    @user = User.find user.id
    @url = "http://localhost:3000" + edit_password_reset_path(@user.reset_password_token)
    mail(:to => user.email,  :subject => "Your password has been reset")
  end
end
