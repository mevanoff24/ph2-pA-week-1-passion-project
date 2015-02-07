helpers do

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logout
    session.clear
    current_user = nil
  end

  def set_current_user
    session[:user_id] = user.id
  end

end
