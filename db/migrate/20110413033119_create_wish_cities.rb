class CreateWishCities < ActiveRecord::Migration
  def self.up
    create_table :wish_cities do |t|
      t.integer :user_id
      t.string :all_selected
      t.boolean :taipei
      t.boolean :hong_kong
      t.boolean :singapore
      t.boolean :tokyo
      t.boolean :kyoto
      t.boolean :seoul
      t.boolean :shanghai
      t.boolean :beijing
      t.boolean :new_york
      t.boolean :san_francisco
      t.boolean :los_angeles
      t.boolean :vancouver
      t.boolean :toronto
      t.boolean :barcelona
      t.boolean :madrid
      t.boolean :paris
      t.boolean :london
      t.boolean :berlin

      t.timestamps
    end
  end

  def self.down
    drop_table :wish_cities
  end
end
