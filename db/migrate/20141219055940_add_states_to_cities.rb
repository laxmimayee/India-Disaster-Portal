class AddStatesToCities < ActiveRecord::Migration
  def change
    add_column :cities, :States, :string
  end
end
