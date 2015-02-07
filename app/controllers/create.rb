get '/create' do
  erb :create
end

post '/create' do
  redirect '/create'
end
