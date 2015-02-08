require 'CSV'

CSV.foreach("exercise_file/exercise_list.csv", :headers => true ) do |row|
    Exercise.create({"name_href" => row[0], "name" => row[1], "muscle_targeted_href" => row[2], "muscle_targeted" => row[3], "rating" => row[4], "image_src" => row[5], "image_href" => row[6], "image" => row[7] })
end

Workout.create(name: "Size")
Workout.create(name: "Strength")
Workout.create(name: "Fat Loss")
Workout.create(name: "Maintaince")
Workout.create(name: "Size and Strength")

User.create(name: "Matt", username: "mevanoff24", email: "mevanoff24@gmail.com", password: "awesome")
Routine.create(name:"Squat", sets: 3, reps: 3, weight: 330, workout_id: 1)
Routine.create(name:"Bench", sets: 3, reps: 10, weight: 225, workout_id: 1)
Routine.create(name:"Row", sets: 3, reps: 12, weight: 100, workout_id: 1)
Routine.create(name:"Curl", sets: 3, reps: 12, weight: 95, workout_id: 1)
Routine.create(name:"Dips", sets: 3, reps: 20, weight: 190, workout_id: 1)
Routine.create(name:"Clean", sets: 3, reps: 3, weight: 200, workout_id: 1)



Routine.create(name:"Squat", sets: 3, reps: 3, weight: 330, workout_id: 2)
Routine.create(name:"Bench", sets: 3, reps: 10, weight: 225, workout_id: 2)
Routine.create(name:"Row", sets: 3, reps: 12, weight: 100, workout_id: 2)
Routine.create(name:"Curl", sets: 3, reps: 12, weight: 95, workout_id: 2)
Routine.create(name:"Dips", sets: 3, reps: 20, weight: 190, workout_id: 2)
Routine.create(name:"Clean", sets: 3, reps: 3, weight: 200, workout_id: 2)

Routine.create(name:"Squat", sets: 3, reps: 3, weight: 330, workout_id: 3)
Routine.create(name:"Bench", sets: 3, reps: 10, weight: 225, workout_id: 3)
Routine.create(name:"Row", sets: 3, reps: 12, weight: 100, workout_id: 3)
Routine.create(name:"Curl", sets: 3, reps: 12, weight: 95, workout_id: 3)
Routine.create(name:"Dips", sets: 3, reps: 20, weight: 190, workout_id: 3)
Routine.create(name:"Clean", sets: 3, reps: 3, weight: 200, workout_id: 3)

Routine.create(name:"Squat", sets: 3, reps: 3, weight: 330, workout_id: 4)
Routine.create(name:"Bench", sets: 3, reps: 10, weight: 225, workout_id: 4)
Routine.create(name:"Row", sets: 3, reps: 12, weight: 100, workout_id: 5)
Routine.create(name:"Curl", sets: 3, reps: 12, weight: 95, workout_id: 6)
Routine.create(name:"Dips", sets: 3, reps: 20, weight: 190, workout_id: 7)
Routine.create(name:"Clean", sets: 3, reps: 3, weight: 200, workout_id: 8)
