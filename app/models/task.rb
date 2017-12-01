class Task < ApplicationRecord

	belongs_to :project
	has_many :task_users, dependent: :destroy
	has_many :users, through: :task_users

def completed
	self.complete === true;
end
end
