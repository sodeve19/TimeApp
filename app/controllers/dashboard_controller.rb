class DashboardController < ApplicationController

  def index
    @projects = Project.all
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
