class Department < ApplicationRecord

	has_many :users
	has_many :projects, dependent: :destroy

end
