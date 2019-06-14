class AddLocationToProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :latitude, :decimal
    add_column :profiles, :longitude, :decimal
  end
end
