Rails.application.routes.draw do
  
  resources :inventories
  resources :suppliers

  root 'inventories#index'


  get "up" => "rails/health#show", as: :rails_health_check

end
