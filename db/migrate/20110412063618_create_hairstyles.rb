class CreateHairstyles < ActiveRecord::Migration
  def self.up
    create_table :hairstyles do |t|
      t.integer :user_id
      t.string :all_selected

      t.timestamps
    end
  end

  def self.down
    drop_table :hairstyles
  end
end
