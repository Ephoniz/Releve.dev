require 'open-uri'

class CallbacksController < Devise::OmniauthCallbacksController
  def github
    @user = User.from_omniauth(request.env["omniauth.auth"])
    sign_in_and_redirect @user
    file = URI.open(request.env["omniauth.auth"].info.image)
    @user.profile_picture.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
  end
end
