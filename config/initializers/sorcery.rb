Rails.application.config.sorcery.submodules = [:user_activation]

Rails.application.config.sorcery.configure do |config|
  config.user_config do |user|
    user.user_activation_mailer = UserMailer
  end

  config.user_class = "User"
end
