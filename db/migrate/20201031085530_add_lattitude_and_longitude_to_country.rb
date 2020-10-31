class AddLattitudeAndLongitudeToCountry < ActiveRecord::Migration[6.0]
  def change
    add_column :countries, :lattitude, :decimal
    add_column :countries, :longitude, :decimal
  end
end
