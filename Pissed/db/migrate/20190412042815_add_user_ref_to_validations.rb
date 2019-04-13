class AddUserRefToValidations < ActiveRecord::Migration[5.2]
  def change
    add_reference :validations, :user, foreign_key: true
  end
end
