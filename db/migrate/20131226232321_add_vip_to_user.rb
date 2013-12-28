class AddVipToUser < ActiveRecord::Migration
  def change
    add_column :users, :vip_nom, :string
  end
end
