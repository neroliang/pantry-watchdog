Demo::Application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations'}

  root to: 'static_pages#home'

  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/terms', to: 'static_pages#terms'
  get '/confirm-code', to: 'static_pages#confirm_code'

  resources :projects do
    resources :sprints
  end
end
