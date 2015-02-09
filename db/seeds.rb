require 'CSV'

CSV.foreach("exercise_file/exercise_list.csv", :headers => true ) do |row|
    Exercise.create({"name_href" => row[0], "name" => row[1], "muscle_targeted_href" => row[2], "muscle_targeted" => row[3], "rating" => row[4], "image_src" => row[5], "image_href" => row[6], "image" => row[7] })
end

Workout.create(goal: "Size", description: "Gain Size")
Workout.create(goal: "Strength", description: "Get Stronger")
Workout.create(goal: "Fat Loss", description: "Keep Muscle, Lose Fat")
Workout.create(goal: "Maintaince", description: "Maintain Your Current Physique")
Workout.create(goal: "Size and Strength", description: "Best of Both, Size and Strength")

User.create(name: "Matt", username: "mevanoff24", email: "mevanoff24@gmail.com", password: "awesome")
Routine.create(name:"Squat", sets: 3, reps: 3, weight: 330, workout_id: 1)
Routine.create(name:"Leg Press", sets: 3, reps: 10, weight: 225, workout_id: 1)
Routine.create(name:"Hack Squat", sets: 3, reps: 12, weight: 100, workout_id: 1)
Routine.create(name:"Lunges", sets: 3, reps: 12, weight: 95, workout_id: 1)
Routine.create(name:"Leg Extension", sets: 3, reps: 20, weight: 190, workout_id: 1)
Routine.create(name:"Clean", sets: 3, reps: 3, weight: 200, workout_id: 1)

Routine.create(name:"Incline Press", sets: 3, reps: 3, weight: 330, workout_id: 2)
Routine.create(name:"Bench", sets: 3, reps: 10, weight: 225, workout_id: 2)
Routine.create(name:"Dips", sets: 3, reps: 12, weight: 100, workout_id: 2)
Routine.create(name:"Cable Fly", sets: 3, reps: 12, weight: 95, workout_id: 2)
Routine.create(name:"Row", sets: 3, reps: 20, weight: 190, workout_id: 2)
Routine.create(name:"Pull Up", sets: 3, reps: 3, weight: 200, workout_id: 2)

Routine.create(name:"Curl", sets: 3, reps: 3, weight: 330, workout_id: 3)
Routine.create(name:"Pushdown", sets: 3, reps: 10, weight: 225, workout_id: 3)
Routine.create(name:"Skull Crusher", sets: 3, reps: 12, weight: 100, workout_id: 3)
Routine.create(name:"Db Curl", sets: 3, reps: 12, weight: 95, workout_id: 3)
Routine.create(name:"Shoulder Press", sets: 3, reps: 20, weight: 190, workout_id: 3)
Routine.create(name:"Side Raise", sets: 3, reps: 3, weight: 200, workout_id: 3)
