get '/main' do
  # @workouts = Workout.first.routines
  @workouts = Workout.all
  @routines = Routine.all
  @exercises = Exercise.all
  erb :main
end

post '/main' do
  redirect '/main'
end


# Workout.first.routines
