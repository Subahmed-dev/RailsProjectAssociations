Rails.application.routes.draw do
  
  resources :inventory 
  resources :suppliers


  get "up" => "rails/health#show", as: :rails_health_check

end
