class CreateWishWayToTravels < ActiveRecord::Migration
  def self.up
    create_table :wish_way_to_travels do |t|
      t.integer :user_id
      t.string :all_selected
      t.boolean :cruise
      t.boolean :island
      t.boolean :known_city
      t.boolean :unknown_city
      t.boolean :exotic
      t.boolean :bag_packer
      t.boolean :bed_and_breakfast
      t.boolean :boutique_hotel
      t.boolean :chain_hotel
      t.boolean :surprise
      t.boolean :wander
      t.boolean :planned

      t.timestamps
    end
  end

  def self.down
    drop_table :wish_way_to_travels
  end
end
