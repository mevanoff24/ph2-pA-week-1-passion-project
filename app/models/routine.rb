class Routine < ActiveRecord::Base
  belongs_to :workout
  has_many :exercises
end
