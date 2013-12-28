class AddTriggramme < ActiveRecord::Migration
  def change
    add_column :users, :trigramme, :string
  end
end
