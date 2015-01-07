class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @projects = Project.all
    @project = Project.new

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
  end

  def create
    @project = Project.new(project_params)
    @project.save

    if @project.save
      redirect_to projects_path
    else
      render 'index'
    end
    #respond_with(@project)
  end

  def update
    @project.update(project_params)
    #respond_with(@project)
  end

  def destroy
    @project.destroy
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
