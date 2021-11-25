Rails.application.routes.draw do
  get 'admin/index'
  
  get 'departaments/index'

  resources :departments

  get 'departaments/new'
  get 'departaments/new'
  
  post 'new', to: 'departaments#new'

  resources :departaments, except: [:destroy]
  resources :equipment, except: [:destroy]
  resources :employees, except: [:destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end


