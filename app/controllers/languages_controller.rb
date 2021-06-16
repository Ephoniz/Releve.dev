class LanguagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @languages = Language.all
  end

  def show
    @language = Language.find(params[:id])
  end
end


