class CreateHappyThoughts < ActiveRecord::Migration
  def self.up
    create_table :happy_thoughts do |t|
      t.integer :user_id
      t.text :happy_thought

      t.timestamps
    end
  end

  def self.down
    drop_table :happy_thoughts
  end
end
