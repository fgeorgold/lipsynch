class ApplicationController < ActionController::Base

  def login_required
    if session[:user]
      return true
    end
    flash[:warning]='You need to login to do that'
    session[:return_to]=request.url
    redirect_to :controller => "user", :action => "login"
    return false 
  end

  def redirect_to_stored
    if return_to = session[:return_to]
      session[:return_to]=nil
      redirect_to return_to
    else
      redirect_to :controller=>'user', :action=>'welcome'
    end
  end

end
