Scaphon::Application.routes.draw do

  resources :conferences do
    resources :pictures
  end

  resources :newsletters do
    resources :pictures
  end

  root to: "home#index"
end
