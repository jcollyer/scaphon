Scaphon::Application.routes.draw do
  ### All for authentication ###
  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  get "sign_up" => "users#new", :as => "sign_up"

  resources :users
  resources :sessions

  root to: "home#index"

  resources :supporters do
    resources :pictures
    resources :attachments
  end

  resources :abouts do
    resources :pictures
  end

  resources :board_members do
    resources :pictures
  end

  resources :communities do
    resources :pictures
    resources :attachments
  end

  resources :scholarships do
    resources :pictures
    resources :attachments
  end

  resources :affairs do
    resources :pictures
    resources :attachments
  end

  resources :newsletters do
    resources :pictures
    resources :attachments
  end

  resources :password_resets
  resources :newsletter_blasts
end
