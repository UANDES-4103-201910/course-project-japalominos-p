class AddUserRefToInappropietes < ActiveRecord::Migration[5.2]
  def change
    add_reference :inappropietes, :user, foreign_key: true
  end
end
