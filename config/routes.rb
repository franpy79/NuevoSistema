Rails.application.routes.draw do
    root to: 'home#index'

  
      resources :equipment
      resources :admin
      resources :departaments
      resources :employees
     

      
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end


