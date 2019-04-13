class AddPostRefToShares < ActiveRecord::Migration[5.2]
  def change
    add_reference :shares, :post, foreign_key: true
  end
end
