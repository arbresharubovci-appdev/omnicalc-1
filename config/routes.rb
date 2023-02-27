Rails.application.routes.draw do

  get("/square/new", { :controller => "application", :action => "blank_square_form" })
  get("/square/results", { :controller => "application", :action => "calculate_square" })
  get("/random/results", { :controller => "application", :action => "calculate_random"})
  get("/random/new", { :controller => "application", :action => "calculate_random_new"})
  get("/square_root/new", { :controller => "application", :action => "calculate_root_new"})
  get("/payment/new", { :controller => "application", :action => "calculate_payment_new"})
  get("/square_root/results", { :controller => "application", :action => "calculate_root_results"})
  get("/payment/results", { :controller => "application", :action => "calculate_payment_results"})
end
