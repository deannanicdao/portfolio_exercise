Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  get 'contact', to: 'pages#contact'
  get 'about', to: 'pages#about'

  get 'quotes', to: 'quotes#index', as: 'quotes'
  post 'quotes', to: 'quotes#add_quotes'
  get 'quotes', to: 'quotes#show_quote'
  get 'quotes/:id', to: 'quotes#show'
  put 'quotes/:id', to: 'quotes#update'
  delete 'quotes/:id', to: 'quotes#destroy'

end
