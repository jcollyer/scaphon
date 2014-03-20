Scaphon::Application.routes.draw do

  resources :attachments

  resources :conferences do
    resources :pictures
  end

  resources :newsletters do
    resources :pictures
    resources :attachments
  end

  root to: "home#index"
end
