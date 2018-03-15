class WelcomeController < ApplicationController
  def index
  end
  def home
    render 'backend/home/index'
  end
  def seeyou
    render 'edit' , :layout => 'main_layout'
  end
end
