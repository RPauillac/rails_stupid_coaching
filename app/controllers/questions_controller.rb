class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:answer]
    @answer = coach_answer(@question)
  end

  def coach_answer(your_message)
    if your_message.include? '?'
      return "Silly question, get dressed and go to work!"
    elsif your_message == "I am going to work"
      return "Great!"
    else
      return "I don't care, get dressed and go to work!"
    end
  end
end
