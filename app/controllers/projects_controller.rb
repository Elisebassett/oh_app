class ProjectsController < ApplicationController
  def index
    @projects = Project.all

  end

  def new
    @project = Project.new
    @project_new = Project.new
  end

  def create
    @project = Project.create(project_params)
    if @project.save!
      redirect_to @project
    end
  end

  def show
    @projects = Project.all
    @project = Project.find(params[:id])
    @tasks = Task.all
    @users = User.all
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
    # end
  end

  private

  def project_params
    params.require(:project).permit(:department_id, :name, :description, :deadline, :id)
  end

end
