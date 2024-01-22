class QuestionsController < ApplicationController
  def questions
    if request.post?
      @question = params[:question]
      @answer = coach_answer(@question)
      render :questions
    end
  end

  private

  def coach_answer(question)
    if question == 'I am going to work'
      'Great!'
    else
      question.end_with?('?') ? 'Silly question, get dressed and go to work!' : 'I don\'t care, get dressed and go to work!'
    end
  end
end
