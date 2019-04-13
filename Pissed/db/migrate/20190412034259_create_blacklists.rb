class CreateBlacklists < ActiveRecord::Migration[5.2]
  def change
    create_table :blacklists do |t|
      t.date :date_suspended

      t.timestamps
    end
  end
end
