

get '/login' do

end

post '/login' do
  @user = User.find_by(username: params[:username])
  if @user && @user.password == params[:password]
    set_current_user(@user)
  end
end





get '/signup' do
  # erb :signup
end

post '/signup' do
  user = User.new(name: params[:name], username: params[:username], email: params[:email], password: params[:passowrd])
  if user.save
    redirect '/workout'
  else
    "You have a problem"
    # erb :signup
  end
end

get '/signout' do
  logout
end
