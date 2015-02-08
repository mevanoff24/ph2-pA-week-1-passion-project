get '/create/routine' do
  @exercises = Exercise.all
  erb :create
end

post '/create/routine' do
  @user = User.find(session[:id])
  @user = Routine.create(name: params[:name], sets: params[:sets], reps: params[:reps], weight: params[:weight])
  redirect '/main'
end


get '/create/workout' do
  erb :create_workout
end

post'/create/workout' do
  @user = User.find(session[:id])
  @user = Workout.create(name: params[:name], description: params[:description])
  erb :create_workout
  redirect '/main'
end

get '/update/routine' do
  erb :update_workout
end

put '/update/routine' do
  @user = User.find(session[:id])
  @user = Routine.update_attributes(name: params[:name], sets: params[:sets], reps: params[:reps], weight: params[:weight])
  redirect '/main'
end

get '/delete/routine' do
  erb :delete_workout
end

delete '/delete/routine' do
  @user = User.find(session[:id])
  @user.workouts.destroy
  redirect '/main'
end

