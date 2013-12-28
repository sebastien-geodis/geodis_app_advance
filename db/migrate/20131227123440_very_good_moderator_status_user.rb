class VeryGoodModeratorStatusUser < ActiveRecord::Migration
  def change
    add_column :users, :is_moderator, :boolean
  end
end
