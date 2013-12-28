class CorrectionStatusUser < ActiveRecord::Migration
  def change
    remove_column :users, :intervention_status_id
  end
end
