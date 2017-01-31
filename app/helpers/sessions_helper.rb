module SessionsHelper
  def log_in(user)
    session[:user_id] = user.id
  end

  def log_out
    @current_user = nil
    session[:id] = nil
  end

  def current_user
    return @current_user ||= User.find(session[:user_id])
  end

def current_user=(user)
  @current_user = @user
end
end
