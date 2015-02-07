class User < ActiveRecord::Base
  has_and_belongs_to_many :workouts
  has_secure_password

  # validates :name, :username, :email, :password, preseence: true

  validates :username, :email, uniqueness: true

  validates_format_of :email, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/

  # validates :password, length: { minimun: 5 }

end
