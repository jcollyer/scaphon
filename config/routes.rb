Scaphon::Application.routes.draw do

  resources :affairs

  resources :attachments

  resources :conferences do
    resources :pictures
    resources :attachments
  end

  resources :newsletters do
    resources :pictures
    resources :attachments
  end

  root to: "home#index"
end
