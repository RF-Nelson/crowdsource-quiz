class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def new
    @question = Question.new(wrong_choice2: "", wrong_choice3: "", wrong_choice4: "")
  end

  def create
    @question = Question.new(question_params)

      puts("***********")
      puts("***********")
      puts("***********")
      puts("***********")
      puts("***********")
      puts(@question.inspect)
      puts("***********")
      puts("***********")
      puts("***********")
      puts("***********")
    if @question.save
      flash.now[:errors] = "New question created! Thank you for your contribution."
      redirect_to root_url
    else
      flash.now[:errors] = @question.errors.full_messages
      render :new
    end
  end

  private

  def question_params
    params.require(:question).permit(:question_text, :answer, :wrong_choice1, :wrong_choice2, :wrong_choice3, :wrong_choice4)
  end
end
