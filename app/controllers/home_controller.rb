class HomeController < ApplicationController
  def index
    if user_signed_in?
      redirect_to animals_path
    end
  end
end
