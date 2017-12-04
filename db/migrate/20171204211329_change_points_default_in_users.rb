class ChangePointsDefaultInUsers < ActiveRecord::Migration[5.1]
  def change
  	change_column :users, :points, :integer, :default => 0
  	change_column :tasks, :points, :integer, :default => 5
  end
end
