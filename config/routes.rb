Rails.application.routes.draw do
  get 'about' , to: 'pages#about'
  get 'notes/show' , to: 'notes#show'
  get 'secret', to: 'secrets#private'
  get 'contact', to: 'pages#contact'
  root 'pages#home'
  
end
