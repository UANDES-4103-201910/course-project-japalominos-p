class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :picture
      t.text :bio
      t.string :gps_location
      t.string :city
      t.string :country

      t.timestamps
    end
  end
end
