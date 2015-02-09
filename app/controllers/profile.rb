get '/profile/:username' do
  @user = User.find_by(username: params[:username])
  @user_workouts = Workout.find_by(goal: "Size")

  erb :profile
end

post '/profile/:username' do
  redirect 'profile/:username'
end

get '/profile' do
  redirect '/main'
end



