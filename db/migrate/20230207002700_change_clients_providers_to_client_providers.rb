class ChangeClientsProvidersToClientProviders < ActiveRecord::Migration[7.0]
  def change
    rename_table :clients_providers, :client_providers
  end
end
