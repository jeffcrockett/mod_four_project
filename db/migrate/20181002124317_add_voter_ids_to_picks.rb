class AddVoterIdsToPicks < ActiveRecord::Migration[5.2]
  def change
    add_column :picks, :voter_ids, :string
  end
end
