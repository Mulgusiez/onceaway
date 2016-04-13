Rails.application.routes.draw do
  root to: 'pages#home'

  resources :pages do
    collection do
      post 'send_request', to: "pages#send_request"
    end
  end

  get '/google7e35f88d3d0c8196.html',
  to: proc { |env| [200, {}, ["google-site-verification: google7e35f88d3d0c8196.html"]] }
end
