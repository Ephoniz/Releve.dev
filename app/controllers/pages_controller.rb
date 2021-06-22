class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]
  def mentors
    @users = User.where(mentor: true)
  end

  def home
  end

  def dashboard
  end
end
