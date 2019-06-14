class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :nick_name
      t.string :email
      t.string :password
      t.integer :flags
      t.boolean :suspended
      t.boolean :admin
      t.boolean :geofence_ver
      t.boolean :geofence
      t.boolean :superadmin

      t.timestamps
    end
  end
end
