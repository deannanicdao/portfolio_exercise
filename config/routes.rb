Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  get 'contact', to: 'pages#contact'
  get 'about', to: 'pages#about'
  post 'quotes', to: 'pages#add_quotes'
  get 'quotes', to: 'quotes#show_quote'

end
