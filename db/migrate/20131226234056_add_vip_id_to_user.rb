class AddVipIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :vip_id, :string
  end
end
