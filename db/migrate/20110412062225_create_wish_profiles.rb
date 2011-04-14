class CreateWishProfiles < ActiveRecord::Migration
  def self.up
    create_table :wish_profiles do |t|
      t.integer :user_id
      t.string :gender
      t.integer :age_from
      t.integer :age_to
      t.integer :height_from
      t.integer :height_to


      t.timestamps
    end
  end

  def self.down
    drop_table :wish_profiles
  end
end
