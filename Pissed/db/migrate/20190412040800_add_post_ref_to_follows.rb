class AddPostRefToFollows < ActiveRecord::Migration[5.2]
  def change
    add_reference :follows, :post, foreign_key: true
  end
end
