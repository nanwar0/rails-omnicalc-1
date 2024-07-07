Rails.application.routes.draw do
  get("/", {:controller => "pages", :action => "home"})
  get("/square/:status", {:controller => "pages", :action => "square"})
end
