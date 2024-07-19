Rails.application.routes.draw do
  
  concern :routable do
    resources :inventories
    resources :suppliers
  end

  resources :inventories, concerns: :routable
  resources :suppliers, concerns: :routable

  root 'inventories#index'


  # get "up" => "rails/health#show", as: :rails_health_check

end
