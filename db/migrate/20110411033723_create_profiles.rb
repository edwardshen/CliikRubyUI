class CreateProfiles < ActiveRecord::Migration
  def self.up
    create_table :profiles do |t|
      t.integer :user_id
      t.string :gender
      t.date :birthday
      t.integer :height
      t.string :color
      t.string :location
      t.string :date_location

      t.timestamps
    end
  end

  def self.down
    drop_table :profiles
  end
end
