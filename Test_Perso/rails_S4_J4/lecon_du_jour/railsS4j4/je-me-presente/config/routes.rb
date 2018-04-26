Rails.application.routes.draw do
  get '/', to: 'static#home' #On lie la methode home dans static à la page d'acceuil

  get 'contact', to: 'static#contact'

  get 'about', to: 'static#about'

  get 'about/me', to: 'static#me', :as => "guigz"

  get 'about/mon-groupe', to: 'static#mon-groupe', :as => "flibustiers"

end
	