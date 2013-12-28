class CreateInterventions < ActiveRecord::Migration
  def change
    create_table :interventions do |t|
      t.integer :user_id
      t.integer :intervention_status_id
      t.integer :vip_id
      t.boolean :is_complete

      t.timestamps
    end
  end
end
