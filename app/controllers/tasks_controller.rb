class TasksController < ApplicationController


  def create
  	@task = Task.new(task_params)
  		if @task.save!
  		end
  end

  def update
  	
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
    params.require(:task).permit(:project_id, :name, :description, :deadline, :id)
  end
end
