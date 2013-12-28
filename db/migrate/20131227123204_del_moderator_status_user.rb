class DelModeratorStatusUser < ActiveRecord::Migration
  def change
    remove_column :users, :Is_moderator, :boolean
  end
end
