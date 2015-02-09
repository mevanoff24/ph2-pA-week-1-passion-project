get '/create/routine' do
  @exercises = Exercise.all
  erb :create
end

post '/create/routine' do
  @user = User.find(session[:user_id])
  @routine = Routine.create(name: params[:name], sets: params[:sets], reps: params[:reps], weight: params[:weight], user_id: session[:user_id])
  redirect "/main"
end


get '/create/workout' do
  erb :create_workout
end

post'/create/workout' do
  @user = User.find(session[:user_id])
  @user = Workout.create(goal: params[:name], description: params[:description], user_id: session[:user_id])
  erb :create_workout
  redirect '/main'
end

get '/update' do
  erb :update
end

get '/update/routine' do
  erb :update_workout
end

put '/update/routine' do
  name = params[:name]
  @user = User.find(session[:user_id])
  routine = Routine.find_by(name: params[:name])
  routine.update(name: params[:name], sets: params[:sets], reps: params[:reps], weight: params[:weight])
  redirect '/main'
end

get '/delete/workout' do
  erb :delete_workout
end

delete '/delete/workout' do
  # You can only have one goal
  Workout.find_by(user_id: session[:user_id]).destroy
  redirect '/main'
end


