class CreateOutfitStyles < ActiveRecord::Migration
  def self.up
    create_table :outfit_styles do |t|
      t.integer :user_id
      t.string :all_selected

      t.timestamps
    end
  end

  def self.down
    drop_table :outfit_styles
  end
end
