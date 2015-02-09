class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.string   :goal
      t.string   :description
      t.references :user

      t.timestamps
    end
  end
end
