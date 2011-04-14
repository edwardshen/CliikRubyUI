class CreateWishOutdoorActivities < ActiveRecord::Migration
  def self.up
    create_table :wish_outdoor_activities do |t|
      t.integer :user_id
      t.string :all_selected
      t.boolean :biking
      t.boolean :hiking
      t.boolean :surfing
      t.boolean :snowboarding_skiing
      t.boolean :swimming
      t.boolean :photography
      t.boolean :fishing
      t.boolean :gym
      t.boolean :basketball
      t.boolean :baseball
      t.boolean :tennis
      t.boolean :suburban

      t.timestamps
    end
  end

  def self.down
    drop_table :wish_outdoor_activities
  end
end
