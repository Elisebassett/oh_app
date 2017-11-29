class ChangeColumnsOnProjectTable < ActiveRecord::Migration[5.1]
  def change
  	change_column(:projects, :deadline, :date)
  	change_column(:projects, :completed, :boolean)
  end
end
