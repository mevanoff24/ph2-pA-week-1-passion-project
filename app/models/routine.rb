class Routine < ActiveRecord::Base
  belongs_to :exercise
  has_many :workouts
end
