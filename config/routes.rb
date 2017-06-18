Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'

  get '/timeline', to: 'static_pages#timeline', as: :timeline

  get '/friends', to: 'static_pages#friends', as: :friends

  get '/about', to: 'static_pages#about', as: :about
end
