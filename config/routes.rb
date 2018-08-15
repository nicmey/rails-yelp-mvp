Rails.application.routes.draw do
  resources :restaurants, only: ["index", "show", "new"] do
        resources :reviews, only: [ :new, :create ]
  end
end
