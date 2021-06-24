class RegistrationsController < Devise::RegistrationsController

  private

  def signup_params
    params.require(:user).permit(:first_name,
                                 :last_name,
                                 :password,
                                 :password_confirmation,
                                 :username,
                                 :full_name)
  end

  def account_update_params
    params.require(:user).permit(:first_name,
                                 :last_name,
                                 :password,
                                 :password_confirmation,
                                 :current_password,
                                 :username,
                                 :full_name)
  end
end
