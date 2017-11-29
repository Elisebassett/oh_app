class Task < ApplicationRecord

	belongs_to :project
	has_many :task_users
	has_many :users, through: :task_users

end
