class AddUserToBlacklist < ActiveRecord::Migration[5.2]
  def change
    add_reference :blacklists, :user, foreign_key: true
  end
end
