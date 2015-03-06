class AddRestaurantRefToPin < ActiveRecord::Migration
  def change
    add_reference :pins, :restaurant, index: true
  end
end
