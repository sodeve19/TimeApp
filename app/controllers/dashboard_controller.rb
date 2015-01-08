class DashboardController < ApplicationController
  

  def index
    @projects = Project.all

    render 'dashboard'
  end

  def new

  end

  def create

  end

end
