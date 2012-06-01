class QuizzesController < ApplicationController
  before_filter :login_required#, :only=>['welcome', 'change_password', 'hidden']
  def show
    @q_num = params[:q_num] || 0
    @q_num = @q_num.to_i

    if (@q_num==0) then
      session[:score] = 0
    else
      session[:score]+=1 if params[:result] == "correct"
    end

    @quiz = Quiz.find(params[:id])
    @questions = @quiz.questions.sample(4) # pick 4 random question
    @question = @questions[0]
    @questions.shuffle!
  end
end
