get '/main' do
  @workouts = Workout.all
  @routines = Routine.all
  @exercises = Exercise.all
  erb :main
end

post '/main' do
  redirect '/main'
end
