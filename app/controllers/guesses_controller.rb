class GuessesController < ApplicationController

  def index
    @list_of_guesses = Guess.all


    render("index.html.erb")
  end

  def id
    @id = params["id"]

    render("id.html.erb")
  end
end
