class AddPriceCuisineAddressLocationToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :price, :integer
    add_column :restaurants, :cuisine, :string
    add_index :restaurants, :cuisine
    add_column :restaurants, :address, :text
    add_column :restaurants, :location, :string
    add_index :restaurants, :location
  end
end
