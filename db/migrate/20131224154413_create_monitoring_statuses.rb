class CreateMonitoringStatuses < ActiveRecord::Migration
  def change
    create_table :monitoring_statuses do |t|
      t.string :name

      t.timestamps
    end
  end
end
