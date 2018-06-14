Rails.application.routes.draw do

  resources :attractions,only: [:index, :show]

end
