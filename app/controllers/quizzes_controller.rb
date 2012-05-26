class QuizzesController < ApplicationController
  before_filter :login_required#, :only=>['welcome', 'change_password', 'hidden']
  def show
  end
end
