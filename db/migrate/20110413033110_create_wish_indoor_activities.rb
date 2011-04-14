class CreateWishIndoorActivities < ActiveRecord::Migration
  def self.up
    create_table :wish_indoor_activities do |t|
      t.integer :user_id
      t.string :all_selected
      t.boolean :concert
      t.boolean :painting
      t.boolean :cooking
      t.boolean :reading
      t.boolean :performance
      t.boolean :instrument
      t.boolean :video_gaming
      t.boolean :cleaning
      t.boolean :yoga
      t.boolean :puzzle_game
      t.boolean :lounge
      t.boolean :clubbing
      t.boolean :KTV
      t.boolean :comic
      t.boolean :restaurent_exploring
      t.boolean :movie

      t.timestamps
    end
  end

  def self.down
    drop_table :wish_indoor_activities
  end
end
