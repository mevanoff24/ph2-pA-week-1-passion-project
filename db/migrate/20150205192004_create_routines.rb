class CreateRoutines < ActiveRecord::Migration
  def change
    create_table :routines do |t|
      t.string   :name
      t.integer  :sets
      t.integer  :reps
      t.integer  :weight
      t.references :workout
      # t.references :exercise

      t.timestamps
    end
  end
end
