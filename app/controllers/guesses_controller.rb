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

  def new_form

    render("new_form.html.erb")
  end

  def create_row
    @first = params[:first_number]
    @second = params[:second_number]
    @third = params[:third_number]

    g = Guess.new
    g.first_number = @first
    g.second_number = @second
    g.third_number = @third
    g.save

    redirect_to("/guesses")
  end

  def edit_form

    id = params[:old_id]
    g = Guess.find(id)

    @first = g.first_number
    @second = g.second_number
    @third = g.third_number

    render("edit_form.html.erb")
  end

  def update

    


    redirect_to("/guesses")
  end
end
