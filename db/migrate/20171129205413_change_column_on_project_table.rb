class ChangeColumnOnProjectTable < ActiveRecord::Migration[5.1]
  def change
  	change_column(:projects, :bonus_points, :integer)
  end
end
