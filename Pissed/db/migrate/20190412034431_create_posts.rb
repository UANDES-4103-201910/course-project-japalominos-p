class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.string :city
      t.string :country
      t.string :gps_location
      t.boolean :privacy
      t.boolean :visible
      t.boolean :mark
      t.belongs_to : user, index: true
      t.timestamps
    end
  end
end
