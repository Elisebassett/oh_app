class TasksController < ApplicationController


  def create
  	@task = Task.new(task_params)
  		if @task.save!
  		end
  end

  def update
  	
  end

  def destroy
  
  end

  private

  def task_params
    params.require(:task).permit(:project_id, :name, :description, :deadline)
  end
end
