Rails.application.routes.draw do
  get("/square/new", { :controller => "omnicalc", :action => "two"})
  get("square/result", { :controller => "omnicalc", :action => "square_result"})
  get("square_root/new", { :controller => "omnicalc", :action => "square_root_new"})
  get("/square_root/result", { :controller => "omnicalc", :action => "square_root_result"})
  get("/payment/new", { :controller => "omnicalc", :action => "payment_new" })
  get("/payment/result", { :controller => "omnicalc", :action => "payment_result"})
  get("/random/new", { :controller => "omnicalc", :action => "random_new"})
  get("/random/result", { :controller => "omnicalc", :action => "random_result"})
end
