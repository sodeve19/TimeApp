class TasksController < ApplicationController

  def create
    @projects = Project.all
    @task = Task.new(task_params)
    @task.save

    redirect_to dashboard_index_path
    #render 'dashboard/dashboard'
  end

  def destroy
    @task.destroy
    
    redirect_to dashboard_index_path
    #respond_with(@project)
  end

  private
    def task_params
      params.require(:task).permit(:project_id, :description)
    end
end
