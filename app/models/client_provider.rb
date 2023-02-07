class ClientProvider < ApplicationRecord
  has_one :client
  has_one :provider
end
