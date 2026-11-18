class ServiceType < ApplicationRecord
  belongs_to :transport_mode
  has_many :shipments
end
