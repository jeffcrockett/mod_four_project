class CreatePicks < ActiveRecord::Migration[5.2]
  def change
    create_table :picks do |t|
      t.datetime :date
      t.integer :restaurant_id
      t.integer :user_id
      t.integer :votes
      t.boolean :confirmed

      t.timestamps
    end
  end
end
