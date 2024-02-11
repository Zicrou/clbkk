class AddNewColumnToVehicule < ActiveRecord::Migration[7.0]
  def change
    add_column :vehicules, :annee_modele, :string
    add_column :vehicules, :date_de_premiere_mise_en_circulation, :string
    add_column :vehicules, :kilometrage, :string
    add_column :vehicules, :diesel, :integer
    add_column :vehicules, :gazoil, :integer
    add_column :vehicules, :hybride, :integer
    add_column :vehicules, :manuelle, :integer # enum
    add_column :vehicules, :automatique, :integer # enum
    add_column :vehicules, :sequentielles, :integer # enum
    add_column :vehicules, :type_de_vehicule, :string # break(cassé) ou long
    add_column :vehicules, :nombre_de_porte, :integer
    add_column :vehicules, :nombre_de_place, :integer
    add_column :vehicules, :puissance_fiscale, :string
    add_column :vehicules, :puissance_din, :string
  end
end
