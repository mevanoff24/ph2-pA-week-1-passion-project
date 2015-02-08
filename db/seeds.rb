require 'CSV'

CSV.foreach("exercise_file/exercise_list.csv", :headers => true ) do |row|
    Exercise.create({"name_href" => row[0], "name" => row[1], "muscle_targeted_href" => row[2], "muscle_targeted" => row[3], "rating" => row[4], "image_src" => row[5], "image_href" => row[6], "image" => row[7] })
end


User.create(name: "Matt", username: "mevanoff24", email: "mevanoff24@gmail.com", password: "awesome")
Routine.create(name:"Squat", sets: 3, reps: 3, weight: 330)
Routine.create(name:"Bench", sets: 3, reps: 10, weight: 225)
Routine.create(name:"Row", sets: 3, reps: 12, weight: 100)
Routine.create(name:"Curl", sets: 3, reps: 12, weight: 95)
Routine.create(name:"Dips", sets: 3, reps: 20, weight: 190)
Routine.create(name:"Clean", sets: 3, reps: 3, weight: 200)
Workout.create(name: "Get Big")
