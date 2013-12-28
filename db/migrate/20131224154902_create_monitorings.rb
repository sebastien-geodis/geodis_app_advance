class CreateMonitorings < ActiveRecord::Migration
  def change
    create_table :monitorings do |t|
      t.integer :oscar_ticket_id
      t.integer :user_id
      t.string :comment
      t.date :date_ouverture
      t.date :date_estimation_cloture
      t.date :date_cloture
      t.integer :vip_id
      t.integer :monitoring_status_id

      t.timestamps
    end
  end
end
