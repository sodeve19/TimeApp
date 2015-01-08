class DashboardController < ApplicationController
  

  def index
    @projects = Project.all

    render 'dashboard'
  end

end
