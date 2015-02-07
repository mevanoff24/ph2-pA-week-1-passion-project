User.create(name: "Matt", username: "mevanoff24", email: "mevanoff24@gmail.com", password: "awesome")
Routine.create(sets: 3, reps: 3, weight: 330)
Workout.create(name: "Get Big")


require 'CSV'


CSV.foreach("exercise_file/exercise_list.csv", :headers => true ) do |row|
    Exercise.create({"name_href" => row[0], "name" => row[1], "muscle_targeted_href" => row[2], "muscle_targeted" => row[3], "rating" => row[4], "image_src" => row[5], "image_href" => row[6], "image" => row[7] })
end

