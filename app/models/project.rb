class Project < ApplicationRecord
  
  belongs_to :department
  has_many 	 :tasks, dependent: :destroy
end
