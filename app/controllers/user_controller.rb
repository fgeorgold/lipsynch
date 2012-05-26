class UserController < ApplicationController
  before_filter :login_required, :only=>['welcome']
  def login
    if params[:commit] && params[:commit] == "Login" then
      if u = User.authenticate(params[:username], params[:password]) then
        session[:user] = u
        redirect_to_stored
      else
        flash[:warning]='Invlid username or password.'
      end
    end
  end

  def signup
    if params[:commit] == "Sign Up" then
      u = User.new
      u.login = params[:username]
      if params[:password] != params[:confirm_password] then
        flash[:warning]='Passwords do not match' 
      else
        u.password = params[:password]
        if u.save then
          session[:user] = u
          redirect_to :controller=>'user', :action=>'welcome'
        else
          flash[:warning]=u.errors.map{|k,v| "#{k}: #{v}"}
        end
      end
    end
  end

  def logout
    reset_session
    redirect_to "/"
  end

  def welcome
  end
end
