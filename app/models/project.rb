class Project < ApplicationRecord
  belongs_to :department
  # belongs_to :tasks
  # has_many :users, through :user_projects

end
