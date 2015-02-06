class Workout < ActiveRecord::Base
  has_and_belongs_to_many :users
  has_many :routines
  has_many :exercises, :through => :routines
  # belongs_to :routine
  # belongs_to :users_workout
end
