Rails.application.routes.draw do
  get 'about' , to: 'pages#about'
  get 'contact', to: 'pages#contact'

  get 'notes', to: 'notes#index'
  post 'notes', to: 'notes#create'
  get 'notes/new', to: 'notes#new', as: :new_note
  get 'notes/:id', to: 'notes#show', as: :note
  patch 'notes/:id', to: 'notes#update' 
  delete 'notes/:id', to: 'notes#destroy', as: :delete_note
  get 'notes/:id/edit', to: 'notes#edit', as: :edit_note
  
  get 'items', to: 'items#index'
  post 'items', to: 'items#create'
  get 'items/new', to: 'items#new', as: :new_item
  get 'items/:id', to: 'items#show', as: :item
  patch 'items/:id', to: 'items#update'
  get 'items/:id/edit', to: 'items#edit', as: :edit_item

  get 'secret', to: 'secrets#private'


  root 'pages#home'
  
end
