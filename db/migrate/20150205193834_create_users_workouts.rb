class CreateUsersWorkouts < ActiveRecord::Migration
  def change
    create_table :users_workouts do |t|
      t.references :user
      t.references :workout

      t.timestamps
    end
  end
end
