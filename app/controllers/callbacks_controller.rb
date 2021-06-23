require 'open-uri'
require 'rest-client'

class CallbacksController < Devise::OmniauthCallbacksController
  def github
    @user = User.from_omniauth(request.env["omniauth.auth"])
    sign_in_and_redirect @user
    file = URI.open(request.env["omniauth.auth"].info.image)
    @user.profile_picture.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

    url = "https://api.github.com/users/#{@user.username}/events"
    request = RestClient.get(url)
    response = JSON.parse request
    @user.pro = check_if_pro(response)
    @user.save!
  end

  private

  def check_if_pro(response)
    if response.count >= 1
      date = response.first["created_at"].to_date
      today = Date.today
      return (response.count >= 30) && (today.day - date.day <= 7)
    else
      false
    end
  end
end
