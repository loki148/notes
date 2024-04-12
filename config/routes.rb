Rails.application.routes.draw do
  get 'about' , to: 'pages#about'
  get 'contact', to: 'pages#contact'

  get 'notes', to: 'notes#index'
  post 'notes', to: 'notes#create'
  get 'notes/new', to: 'notes#new'
  get 'notes/:id', to: 'notes#show', as: :note
  
  get 'items', to: 'items#index'
  get 'items/:id', to: 'items#show'

  get 'secret', to: 'secrets#private'


  root 'pages#home'
  
end
