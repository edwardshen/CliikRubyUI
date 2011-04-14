class CreateWhatToDos < ActiveRecord::Migration
  def self.up
    create_table :what_to_dos do |t|
      t.integer :user_id
      t.string :all_selected
      t.boolean :movie
      t.boolean :snack
      t.boolean :shopping
      t.boolean :quick_meal
      t.boolean :nice_meal
      t.boolean :painting
      t.boolean :cooking
      t.boolean :performance
      t.boolean :museum
      t.boolean :walk
      t.boolean :suprise_me
      t.boolean :her_choice
      t.string :payment

      t.timestamps
    end
  end

  def self.down
    drop_table :what_to_dos
  end
end
