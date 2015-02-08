get '/create' do
  @exercises = Exercise.all
  erb :create
end

post '/create' do
  redirect '/create'
end
