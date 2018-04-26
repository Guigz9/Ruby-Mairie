class StaticController < ApplicationController
  def acceuil
  end
  def index
  	puts 'Hello je suis le serveur'
  	@random = rand(1000)
  	puts "voici mon numero aleatoire : #{@random}"
  	puts "j'ai joué avec mon serveur"

  	@user = User.first
  	p "Ceci est mon user : #{@user}"
  end

  def index_in_french
  end

  def post
  	@user = User.first
  end

  def post_envoie
  	puts "Hello depuis le serveur"
  	puts params #cela affiche les parametres dans le terminal
  	puts params["authenticity_token"] #on recupere le parametre token sur le terminal
  	puts params["first_name"] #idem pour prenom
  	puts "C'est fini"
  	user = User.new
  	user.first_name = (params["first_name"])
  	user.save
  	puts user
  end
end
