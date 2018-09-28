class AddRestaurantNameToPick < ActiveRecord::Migration[5.2]
  def change
    add_column :picks, :restaurant_name, :string
  end
end
