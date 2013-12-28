class RemoveVipToUser < ActiveRecord::Migration
  def change
    remove_column :users, :vip_nom, :string
  end
end
