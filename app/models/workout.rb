class Workout < ActiveRecord::Base
  belongs_to :user
  has_many :routines
  has_many :exercises, :through => :routines
  # belongs_to :routine
  # belongs_to :users_workout
end
