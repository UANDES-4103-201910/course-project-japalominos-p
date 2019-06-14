class CreateFileAttachmentDumps < ActiveRecord::Migration[5.2]
  def change
    create_table :file_attachment_dumps do |t|
      t.string :url

      t.timestamps
    end
  end
end
