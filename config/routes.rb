Scaphon::Application.routes.draw do

  resources :pictures

  root to: "home#index"

  resources :newsletters
end
