class AddStateCodeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :state_code, :integer
  end
end
