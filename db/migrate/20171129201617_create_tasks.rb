class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :description
      t.integer :project_id
      t.boolean :complete
      t.date :deadline
      t.integer :points

      t.timestamps
    end
  end
end
