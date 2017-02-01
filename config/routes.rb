Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get("/guesses", { :controller => "guesses", :action => "index"})
  get("/guesses/:id", { :controller => "guesses", :action => "show"})
end
