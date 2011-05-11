class CreateTechsuppquestions < ActiveRecord::Migration
  def self.up
    create_table :techsuppquestions do |t|
      t.text :question
      t.timestamps
    end
  end

  def self.down
    drop_table :techsuppquestions
  end
end
