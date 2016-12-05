class WelcomeController < ApplicationController
  def index
    flash[:notice] = "cheerup"
  end
end
