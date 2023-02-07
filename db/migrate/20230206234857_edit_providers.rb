class EditProviders < ActiveRecord::Migration[7.0]
  def change
    remove_column :providers, :first_name
    remove_column :providers, :last_name
    add_column    :providers, :company_name, :string
  end
end
