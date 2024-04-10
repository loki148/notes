Rails.application.routes.draw do
  get 'about' , to: 'pages#about'
  get 'contact', to: 'pages#contact'

  get 'notes', to: 'notes#index'
  get 'notes/:id', to: 'notes#show'

  get 'secret', to: 'secrets#private'


  root 'pages#home'
  
end
