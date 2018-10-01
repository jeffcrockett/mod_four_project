class CreateUserPicks < ActiveRecord::Migration[5.2]
  def change
    create_table :user_picks do |t|
      t.integer :user_id
      t.integer :pick_id

      t.timestamps
    end
  end
end
