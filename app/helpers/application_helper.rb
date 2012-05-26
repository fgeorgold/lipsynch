module ApplicationHelper
  def current_user
    session[:user]
  end

  def signed_in?
    current_user != nil
  end
end
