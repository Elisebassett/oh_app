class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/


	 has_many :project, through: :user_projects
   has_many :tasks, through: :user_tasks
   belongs_to :department

  validates :first_name, :last_name, :email, presence: true
  validates :email, uniqueness: true

end
