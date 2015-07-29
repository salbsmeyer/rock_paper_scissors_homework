Rails.application.routes.draw do
  # This route is for the bare domain. You can ignore it.
  #get("/", { :controller => "game", :action => "new_game" })

  # Your code goes below.

   get("/",                 { :controller => "game", :action => "move" })
   get("/move/:move",                 { :controller => "game", :action => "move" })

end
