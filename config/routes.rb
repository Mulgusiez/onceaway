Rails.application.routes.draw do
  root to: 'pages#home'

  resources :pages do
    collection do
      post 'send_request', to: "pages#send_request"
    end
  end
end
