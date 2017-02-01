class GuessesController < ApplicationController

  def index
    @list_of_guesses = Guess.all

    render("index.html.erb")
  end

  def show
    @id = params[:id]

    @first_number = Guess.find(@id).first_number.to_i
    @second_number = Guess.find(@id).second_number.to_i
    @third_number = Guess.find(@id).third_number.to_i

    if @first_number < @second_number && @second_number < @third_number
      @result = "Yes!"
    else
      @result = "No."
    end

    render("show.html.erb")
  end
end
