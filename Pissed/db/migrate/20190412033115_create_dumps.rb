class CreateDumps < ActiveRecord::Migration[5.2]
  def change
    create_table :dumps do |t|
      t.string :author
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
