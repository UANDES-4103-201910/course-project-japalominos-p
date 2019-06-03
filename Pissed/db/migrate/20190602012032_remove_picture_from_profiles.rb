class RemovePictureFromProfiles < ActiveRecord::Migration[5.2]
  def change
    remove_column :profiles, :picture, :string
  end
end
