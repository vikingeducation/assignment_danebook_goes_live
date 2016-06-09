Rails.application.routes.draw do
  root 'static_pages#home'
  get 'timeline', to: 'static_pages#timeline'
  get 'friends', to: 'static_pages#friends'
end
