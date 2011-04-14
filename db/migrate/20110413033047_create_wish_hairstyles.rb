class CreateWishHairstyles < ActiveRecord::Migration
  def self.up
    create_table :wish_hairstyles do |t|
      t.integer :user_id
      t.string :all_selected

      t.timestamps
    end
  end

  def self.down
    drop_table :wish_hairstyles
  end
end
