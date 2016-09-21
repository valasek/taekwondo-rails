Rails.application.routes.draw do
  scope ":locale", locale: /#{I18n.available_locales.join("|")}/ do
    root   'static_pages#home'
    get    '/about',    to: 'static_pages#about'
    get    '/contact', to: 'static_pages#contact'
    get    '/signup',  to: 'users#new'
    get    '/login',   to: 'sessions#new'
    post   '/login',   to: 'sessions#create'
    delete '/logout',  to: 'sessions#destroy'
    resources :users
    resources :account_activations, only: [:edit]
    resources :password_resets,     only: [:new, :create, :edit, :update]
    resources :teams
    resources :competitions
    resources :members do
      get 'export', on: :collection
      put 'add_to_competition', on: :collection
    end
  end
  get '*path', to: redirect("/#{I18n.default_locale}/%{path}"), constraints: lambda { |req| !req.path.starts_with? "/#{I18n.default_locale}/" }
  get '', to: redirect("/#{I18n.default_locale}/")
end