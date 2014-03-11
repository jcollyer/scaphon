Scaphon::Application.routes.draw do

  resources :newsletters do
    resources :pictures
  end

  root to: "home#index"
end
