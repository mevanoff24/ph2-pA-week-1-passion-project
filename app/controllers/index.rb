get '/' do
  erb :index
end

post '/' do
  user = User.find_by(username: params[:username]).try(:authenticate,
  params[:password])
  if user
    session[:user_id] = user.id
    redirect '/main'
  else
    redirect '/?error=Username or Password Incorrect'
  end
end
