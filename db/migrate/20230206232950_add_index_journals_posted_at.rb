class AddIndexJournalsPostedAt < ActiveRecord::Migration[7.0]
  def change
    add_index :journals, :posted_at
  end
end
