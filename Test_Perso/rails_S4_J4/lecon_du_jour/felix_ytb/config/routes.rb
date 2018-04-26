Rails.application.routes.draw do
  get '/', to: 'static#acceuil'
  get 'welcome', to: 'static#index'

  get 'bienvenue', to: 'static#index_in_french'

  get 'post', to: 'static#post'
  post 'post', to: 'static#post_envoie'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 
end
