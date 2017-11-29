class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/



  validates :first_name, :last_name, :email, presence: true
  validates :email, uniqueness: true

  has_many :tasks, through: :task_users
  has_many :projects, through: :user_projects

  belongs_to :department
  belongs_to :project, through :user_projects
  belongs_to :tasks, through :user_tasks

end
