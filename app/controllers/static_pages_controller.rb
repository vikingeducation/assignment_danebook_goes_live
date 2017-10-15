class StaticPagesController < ApplicationController
  def index
  end
  def about
    get '/about', 'static_pages#about'
  end
end
