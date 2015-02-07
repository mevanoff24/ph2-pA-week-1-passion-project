class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string   :name
      t.string   :muscle_targeted
      t.string   :rating
      t.references :routine

      t.timestamps
    end
  end
end
