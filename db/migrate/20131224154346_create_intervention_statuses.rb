class CreateInterventionStatuses < ActiveRecord::Migration
  def change
    create_table :intervention_statuses do |t|
      t.string :name

      t.timestamps
    end
  end
end
