class AddPostRefToValidations < ActiveRecord::Migration[5.2]
  def change
    add_reference :validations, :post, foreign_key: true
  end
end
