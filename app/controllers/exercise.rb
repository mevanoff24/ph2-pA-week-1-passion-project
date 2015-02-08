

# get '/exercise/abdominals' do
#   @exercises = Exercise.all
#   erb :exercise
# end

get '/exercise/abdominals' do
  @exercises = Exercise.all
  @single_exercise = Exercise.find_by(name: params[:exercise])
  erb :exercise_abdominals
end

get '/exercise/biceps' do
  @exercises = Exercise.all
  @single_exercise = Exercise.find_by(name: params[:exercise])
  erb :exercise_biceps
end


get '/exercise/:exercise' do
  @exercises = Exercise.all
  @single_exercise = Exercise.find_by(name: params[:exercise])
  erb :exercise
end



