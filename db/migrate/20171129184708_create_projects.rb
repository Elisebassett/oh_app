class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.string :deadline
      t.string :bonus_points
      t.string :completed
      t.references :department, foreign_key: true

      t.timestamps
    end
  end
end
