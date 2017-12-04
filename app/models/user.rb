class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  belongs_to :department, optional: true

  validates :first_name, :last_name, :email, presence: true
  validates :email, uniqueness: true

  has_many :task_users, dependent: :destroy
  has_many :tasks, through: :task_users
  has_many :user_projects, dependent: :destroy
  has_many :projects, through: :user_projects

  belongs_to :department, optional: :true

  def name
    self.first_name + " " + self.last_name
  end

end
