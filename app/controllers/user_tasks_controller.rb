class UserTasksController < ApplicationController
  def create
  	
  end

  def destroy
  	respond_to do |format|
			TaskUser.find(params[:id]).destroy
  		format.js
  	end
  end
end
