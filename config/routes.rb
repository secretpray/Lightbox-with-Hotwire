Rails.application.routes.draw do
  resources :articles do
    resources :attachments, only: :index
  end

  root 'articles#index'
end
