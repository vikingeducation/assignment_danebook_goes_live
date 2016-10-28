Rails.application.routes.draw do

  get '/' => 'static_pages#index'

  get '/timeline' => 'static_pages#timeline'

  get '/friends' => 'static_pages#friends'

end
