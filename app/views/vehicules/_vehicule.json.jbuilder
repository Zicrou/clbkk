json.extract! vehicule, :id, :marque, :modele, :photo, :price, :created_at, :updated_at
json.url vehicule_url(vehicule, format: :json)
