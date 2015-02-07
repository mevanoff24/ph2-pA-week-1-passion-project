get '/profile/:username' do
  @username = params[:username]
  erb :profile
end

post '/profile/:username' do
  @username = params[:username]
  redirect 'profile/:username'
end

get '/profile' do
  redirect '/workout'
end



