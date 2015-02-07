
get '/login' do

end

post '/login' do
  user = User.find_by(username: params[:username]).try(:authenticate,
  params[:password])   # @user = User.find_by(username: params[:username])   #
  if user
    session[:user_id] = user.id
    redirct '/workout'
  else
    redirect '/?error=Username or Password Incorrect'
  end
end

get '/signup' do
  erb :signup
end

post '/signup' do
  user = User.new(params[:user])
  if user.save
    set_current_user
    redirect '/workout'
  else
        redirect '/signup?error=Passowrds do not match'

    #add error message
    # erb :signup
  end
end

get '/signout' do
  session[:user_id] = nil
  redirect '/'
end
