Scaphon::Application.routes.draw do

  resources :conferences

  resources :newsletters do
    resources :pictures
  end

  root to: "home#index"
end
