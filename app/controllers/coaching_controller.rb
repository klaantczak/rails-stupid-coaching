class CoachingController < ApplicationController
  def ask

  end

  def answer
    @question = params[:query]
    @answer = logic(@question)
  end

  private

  def logic(question)
    if question.downcase == "i am going to work right now!"
      ''
    elsif question.end_with?("?")
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
