Rails.application.routes.draw do
  resources :lists do
    resources :tasks, :except => [:show, :index]
  end
end
