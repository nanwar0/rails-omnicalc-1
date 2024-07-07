Rails.application.routes.draw do
  get("/", {:controller => "pages", :action => "home"})
  get("/square/:status", {:controller => "pages", :action => "square"})
  get("/square_root/:status", {:controller => "pages", :action => "sqrt"})
  get("/random/:status", {:controller => "pages", :action => "random"})
  get("/payment/:status", {:controller => "pages", :action => "payment"})
end
