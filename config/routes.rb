Rails.application.routes.draw do
  scope ":locale", locale: /#{I18n.available_locales.join("|")}/ do
    resources :teams
    resources :competitions
    resources :members
    root   'static_pages#home'
    get    '/help',    to: 'static_pages#help'
    get    '/about',   to: 'static_pages#about'
    get    '/contact', to: 'static_pages#contact'
    get    '/signup',  to: 'users#new'
    get    '/login',   to: 'sessions#new'
    post   '/login',   to: 'sessions#create'
    delete '/logout',  to: 'sessions#destroy'
    put    'add_to_competition', to: 'members#add_to_competition'
    resources :users
    resources :account_activations, only: [:edit]
    resources :password_resets,     only: [:new, :create, :edit, :update]
  end
  get '*path', to: redirect("/#{I18n.default_locale}/%{path}"), constraints: lambda { |req| !req.path.starts_with? "/#{I18n.default_locale}/" }
  get '', to: redirect("/#{I18n.default_locale}/")
end