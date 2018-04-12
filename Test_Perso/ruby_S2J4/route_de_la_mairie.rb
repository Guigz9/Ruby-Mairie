require "nokogiri"
require "open-uri"
require "rubygems"


def get_the_email_of_a_townhal_from_its_webpage(url_town)
	page = Nokogiri::HTML(open(url_town))   
	page.css("td:contains('@')").each do |email| #On cherche dans toutes les sous divisions td, celles qui contiennent un @
	def email_text()
	email.text #On les affiche
	end
	p email.text
	end
end	

#Enlever le # en dessous pour tester la method 
#get_the_email_of_a_townhal_from_its_webpage("http://annuaire-des-mairies.com//95/vaureal.html")
  

def get_all_the_urls_of_val_doise_townhalls(url_val_doise)
	new_array= []
	liste95 = Nokogiri::HTML(open(url_val_doise)) 
	liste95.css("a.lientxt").each do |ville|
	y = ville[:href] #On recupère tous les href de la page (ex : .95/vaudherland.html)
	z = y.chars #On place chaque élément dans un tableau
	z.shift #On retire le premier element (le . qu'on ne veut pas)
	z = z.join("") #On reforme les élements du tableau entre eux
	url = url_val_doise + z #On rajoute la fin d'url de cahque ville
	
	new_array << url
	end
new_array
end

url95= "http://annuaire-des-mairies.com/val-d-oise.html"

#Enlever le # en dessous pour tester la method 
#get_all_the_urls_of_val_doise_townhalls(url95)

 liste = []
 array =  get_all_the_urls_of_val_doise_townhalls(url95)

 # =============================================
 #Ca ne marche pas en dessous, pour la dernière partie.
 

 # array.each do |town|
 # emails = get_the_email_of_a_townhal_from_its_webpage(town[:url])
	# liste << emails
 # end


