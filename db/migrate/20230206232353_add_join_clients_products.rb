class AddJoinClientsProducts < ActiveRecord::Migration[7.0]
  def change
    create_join_table :clients, :providers do |t|
      t.index :client_id
      t.index :provider_id
      t.string :plan_type
    end
  end
end
