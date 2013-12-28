class ModeratorStatusUser < ActiveRecord::Migration
  def change
    add_column :users, :Is_moderator, :boolean
  end
end
