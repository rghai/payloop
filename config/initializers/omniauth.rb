OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1083745031709659', 'f6a3e33c68eca4eeee5b53b03eead67d',
  	scope: 'email,user_birthday,user_friends', display: 'popup'
end