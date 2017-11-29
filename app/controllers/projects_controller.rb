class ProjectsController < ApplicationController
  def index
    @project = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.create(project_params)
    redirect_to @project
  end

  def show
    @project = Project.all
    @project = Job.find(params[:id])
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
   
    @project.update(project_params)
    redirect_to @projects 
  end

  def destroy
    # respond_to do |format|
      @project = Project.find(params[:id]).destroy
      # format.js
      # format.html{redirect_to @projects}
    end
  end

  private

  def project_params
    params.require(:project).permit(:name, :description, :department_id, :deadline, :bonus_points, :completed, :avatar)
  end

end
