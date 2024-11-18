Question = "I am going to work"
Answer1 = "Great!"
Answer2 = "Silly question, get dressed and go to work!"
Answer3 = "I don't care, get dressed and go to work!"

class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:question]
    @answer = coach_answer(@question)
  end

  def coach_answer(str)
    if str == Question
    Answer1
    elsif is_question?(str)
      Answer2
    else Answer3
    end
  end

  def is_question?(str)
    if str.nil?
      false
    else
      str.end_with?("?")
    end
  end
end
