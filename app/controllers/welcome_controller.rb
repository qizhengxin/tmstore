class WelcomeController < ApplicationController
  def index
    # binding.pry
    flash[:notice] = "cheerup"
  end
end
