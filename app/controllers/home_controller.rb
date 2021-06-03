class HomeController < ApplicationController
  def index
    redirect_to animals_path if user_signed_in?
  end
end
