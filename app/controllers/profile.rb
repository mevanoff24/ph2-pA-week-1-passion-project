get '/profile/:username' do
  @user = User.find_by(username: params[:username])
  # @user_exercises = @user.workouts.all
  @user_workouts = Workout.find_by(name: "Size")
  erb :profile
end

post '/profile/:username' do
  # Routine.create(name: params[:name], sets: params[:sets], reps: params[:reps], weight: params[:weight])
  # @username = params[:username]
  redirect 'profile/:username'
end

get '/profile' do
  redirect '/main'
end



