class CreateDesigners < ActiveRecord::Migration
  def self.up
    create_table :designers do |t|
      t.string :name
      t.string :email
      t.string :mobile
      t.text :portpolios
      t.string :inspirationurl1
      t.string :inspirationurl2
      t.string :inspirationurl3
      t.text :inspirationcomment
      t.integer :attachment_id
      t.text :javascript
      t.timestamps
    end
  end

  def self.down
    drop_table :designers
  end
end
