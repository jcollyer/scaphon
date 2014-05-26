Scaphon::Application.routes.draw do
  resources :abouts

  root to: "home#index"

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

  resources :conferences do
    resources :pictures
    resources :attachments
  end

  resources :newsletters do
    resources :pictures
    resources :attachments
  end

end
