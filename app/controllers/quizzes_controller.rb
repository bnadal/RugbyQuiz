class QuizzesController < ApplicationController

  def home
    if params[:query].present?
      @quizzes = Quiz.search_by_title(params[:query])
    else
      @quizzes = Quiz.all
    end
  end


  def index
    @user = current_user
    @quizzes = Quiz.all
  end

  def show
    @user = current_user
    @quiz = Quiz.where(id: params[:id]) #display the quiz once the user has clicked on the link (in the view "index")
    @questions = Question.where(quiz: params[:id]) #display the questions of this quizz
    @goodAnswer = QuestionsChoice.where(right_choice:"Y").joins(:question).where(questions: { quiz_id: params[:id] })
    #@goodAnswer provides the good answers via a SQL query on 3 tables
  end


  def new
    @quiz = Quiz.new
  end
end
