class DelTrigUser < ActiveRecord::Migration
  def change
    remove_column :users, :trigramme, :string
  end
end
