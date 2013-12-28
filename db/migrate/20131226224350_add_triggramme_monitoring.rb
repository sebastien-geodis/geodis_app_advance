class AddTriggrammeMonitoring < ActiveRecord::Migration
  def change
        add_column :monitorings, :trigramme, :string
  end
end
