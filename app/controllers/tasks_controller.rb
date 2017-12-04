class TasksController < ApplicationController

  def create
    respond_to do |format|
      @task = Task.new(task_params)
      format.html
      format.js
  	end
  end

  def update
  	respond_to do |format|
	  	@task = Task.find(params[:id])
	  	@task.toggle!(:complete)
	  	if @task.save!
	  		format.html 
	  		format.js
	  	end
	  end
  end

  def destroy
    respond_to do |format|
      @task = Task.find(params[:id]).destroy
      format.js
      format.html{redirect_to @projects}
    end
  end

  private

  def task_params
    params.require(:task).permit(:project_id, :name, :description, :deadline, :complete, :task_id, :points)
  end
end
