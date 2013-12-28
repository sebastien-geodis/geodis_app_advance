class CorrectionTypeOscarTicketId < ActiveRecord::Migration
  def change
    change_column :monitorings, :oscar_ticket_id, :string
  end
end
