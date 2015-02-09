get '/signup' do
  erb :signup
end

post '/signup' do
  @user = User.new(params[:user])
  if @user.save
    session[:user_id] = @user.id
    redirect '/main'
  else
    erb :signup
  end
end

get '/logout' do
  session[:user_id] = nil
  redirect '/'
end
