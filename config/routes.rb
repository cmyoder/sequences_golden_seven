Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get("/guesses", { :controller => "guesses", :action => "index"})
  get("/guesses/new", { :controller => "guesses", :action => "new_form"})
  get("/create_guess", { :controller => "guesses", :action => "create_row"})
  get("/update_row", { :controller => "guesses", :action => "update"})
  get("/guesses/:id", { :controller => "guesses", :action => "show"})
  get("/guesses/:old_id/edit", {:controller => "guesses", :action => "edit_form"})


end
