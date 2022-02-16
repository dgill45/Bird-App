Rails.application.routes.draw do
  resources :birds, only: [:index, :show, :create, :update] 
  patch "/birds/:id/like", to: "birds#increment_likes"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
