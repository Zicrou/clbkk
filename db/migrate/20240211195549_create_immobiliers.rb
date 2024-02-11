class CreateImmobiliers < ActiveRecord::Migration[7.0]
  def change
    create_table :immobiliers do |t|
      t.string :titre
      t.integer :chambre
      t.integer :salle_de_bain
      t.integer :douche_exterieur
      t.text :description
      t.string :prix
      t.string :adresse
      t.string :region
      t.integer :etage
      t.string :rez_de_chausse
      t.string :terasse
      t.string :contact
      t.integer :statut
      t.integer :etat

      t.timestamps
    end
  end
end
