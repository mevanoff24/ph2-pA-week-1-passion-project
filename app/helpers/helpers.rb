helpers do

  def current_user
    @current_user ||= User.find(session[:id]) if session[:id]
  end

  def logout
    session.clear
    @current_user = nil
  end

  def set_current_user(user)
    session[:id] = user.id
  end

end
