class CreateAttachments < ActiveRecord::Migration
  def self.up
    create_table :attachments do |t|
      t.string :filename
      t.string :content_type
      t.binary :data
      t.integer :designer_id
      t.timestamps
    end
  end

  def self.down
    drop_table :attachments
  end
end
