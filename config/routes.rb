Scaphon::Application.routes.draw do

  resources :scholarships

  resources :attachments

  resources :affairs do
    resources :pictures
    resources :attachments
  end

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
