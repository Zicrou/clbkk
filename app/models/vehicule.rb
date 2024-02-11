class Vehicule < ApplicationRecord
    #enum :boite_de_vitesse, {automatique: 0, manuelle: 1, sequentielles: 2}, validate: true 
    
    has_one_attached :photo
end
