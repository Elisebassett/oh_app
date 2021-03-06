class Project < ApplicationRecord
  
  belongs_to :department
  has_many :tasks, dependent: :destroy

  has_many :user_projects, dependent: :destroy
  has_many :users, through: :user_projects


end
