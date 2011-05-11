class CreateTechsuppanswers < ActiveRecord::Migration
  def self.up
    create_table :techsuppanswers do |t|
      t.text :answer
      t.integer :technicalspecialist_id
      t.integer :techsuppquestions_id
      t.timestamps
    end
  end

  def self.down
    drop_table :techsuppanswers
  end
end
