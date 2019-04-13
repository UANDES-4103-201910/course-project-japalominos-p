class AddPostRefToInappropietes < ActiveRecord::Migration[5.2]
  def change
    add_reference :inappropietes, :post, foreign_key: true
  end
end
