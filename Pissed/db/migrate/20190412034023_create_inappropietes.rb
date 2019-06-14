class CreateInappropietes < ActiveRecord::Migration[5.2]
  def change
    create_table :inappropietes do |t|
      t.text :justification
      t.boolean :flag

      t.timestamps
    end
  end
end
