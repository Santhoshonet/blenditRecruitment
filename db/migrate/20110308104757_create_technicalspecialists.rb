class CreateTechnicalspecialists < ActiveRecord::Migration
  def self.up
    create_table :technicalspecialists do |t|
      t.string :name
      t.string :email
      t.string :mobile
      t.integer :attachment_id
      t.integer :techsuppanswers_id
      t.timestamps
    end
  end

  def self.down
    drop_table :technicalspecialists
  end
end
