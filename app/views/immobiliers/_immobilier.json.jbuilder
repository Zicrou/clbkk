json.extract! immobilier, :id, :titre, :chambre, :salle_de_bains, :integer, :description, :prix, :adresse, :region, :etage, :rez_de_chausse, :terasse, :contact, :statut, :etat, :created_at, :updated_at
json.url immobilier_url(immobilier, format: :json)
