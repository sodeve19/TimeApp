class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    @projects = Project.all
#    @project = 
    @tasks = Task.all
    @task = Task.new
    #@project = Project.find(params[:project_id])
    #@task = @project.tasks.build(task_description)

    render 'dashboard'
  end

  private
    def task_description
      params.require(:task).permit(:description)
    end

end
