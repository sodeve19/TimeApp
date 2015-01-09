class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  respond_to :html

  def index
    @projects = current_user.projects.all
    @project = current_user.projects.new

    render 'index'
    #respond_with(@projects)
  end

  def show
    #respond_with(@project)
  end

  #def new
    #@project = Project.new
    #respond_with(@project)
  #end

  def edit
    @project = Project.find(params[:id])
    render :edit
  end

  def create
    @project = current_user.projects.new(project_params)
    @project.save

    if @project.save
      redirect_to projects_path
    else
      render 'index'
    end
    #respond_with(@project)
  end

  def update
    @project = Project.find(params[:id])

    if @project.update(project_params)
      redirect_to projects_path
    else
      render 'edit'
    end
    #respond_with(@project)
  end

  def destroy
    @project.destroy
    
    redirect_to projects_path
    #respond_with(@project)
  end

  private
    def set_project
      @project = Project.find(params[:id])
    end

    def project_params
      params.require(:project).permit(:name)
    end
end
