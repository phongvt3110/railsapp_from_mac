class WelcomeController < ApplicationController
  layout "main_layout"
  def index
  end
  def home
    render 'backend/home/index'
  end
  def seeyou
    render 'edit' , :layout => 'main_layout'
  end
  def seeagain
    render 'add'
  end
end
