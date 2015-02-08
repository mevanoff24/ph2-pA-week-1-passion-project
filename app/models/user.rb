class User < ActiveRecord::Base
  has_many :workouts
  has_secure_password

  validates :name, :username, :email, :password, presence: true

  validates :username, :email, uniqueness: true

  validates_format_of :email, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/

  # validates :password, length: { minimun: 2 }

end
