class Workout < ActiveRecord::Base
  has_many :users
  belongs_to :routine
  belongs_to :users_workout
end
