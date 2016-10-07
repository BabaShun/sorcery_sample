Rails.application.config.sorcery.submodules = [:remember_me]

Rails.application.config.sorcery.configure do |config|
  config.user_config do |user|
    user.remember_me_for = 1209600
  end

  config.user_class = "User"
end
