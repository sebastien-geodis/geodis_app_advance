class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nom
      t.string :prenom
      t.integer :intervention_status_id
      t.boolean :is_admin
      t.integer :user_status_id

      t.timestamps
    end
  end
end
