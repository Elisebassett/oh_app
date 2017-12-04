class ChangePointsDefault < ActiveRecord::Migration[5.1]
  def change
  	change_column :departments, :points, :integer, :default => 0
  	change_column :projects, :bonus_points, :integer, :default => 25
  end
end
