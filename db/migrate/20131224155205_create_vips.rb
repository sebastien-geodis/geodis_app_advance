class CreateVips < ActiveRecord::Migration
  def change
    create_table :vips do |t|
      t.string :nom
      t.string :prenom
      t.string :localisation
      t.string :fonction
      t.string :service
      t.string :email
      t.string :tel_fixe
      t.string :tel_portable
      t.string :assistante
      t.text :identifiants
      t.text :materiel
      t.string :domaine
      t.text :divers

      t.timestamps
    end
  end
end
