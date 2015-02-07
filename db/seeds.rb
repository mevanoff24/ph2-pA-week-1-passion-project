# User.create(name: "Matt", username: "mevanoff24", email: "mevanoff24@gmail.com", password: "awesome")
# Exercise.create(name: "Squat")
# Routine.create(sets: 3, reps: 3, weight: 330)
# Workout.create(name: "Get Big")


def write_json
  events_json = []
  collection.all.each do |event|
    event_json = {
      "name" => event.name.text,
      "muscle_targeted" => event.muscle_targeted.text,
      "rating" => event.rating,
    }
    events_json << event_json
  end
  File.open("public/event.json","w") do |f|
    f.write(events_json.to_json)
  end
end

