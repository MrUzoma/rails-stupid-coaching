# app/controller/questions_controller.rb
class QuestionsController < ApplicationController
  def ask
  end

  def answer
    answers = ["I don't care, get dressed and go to work!", 'Silly question, get dressed and go to work!', 'Great!']
    get_rid = 'i am going to work'
    @answer = ''
    if params[:question].downcase == get_rid
      @answer = answers[2]
    elsif params[:question].end_with?('?')
      @answer = answers[1]
    else
      @answer = answers[0]
    end
  end
end
