class Shipment < ApplicationRecord
  belongs_to :service_type

  before_validation :generate_tracking_number, on: :create

  validates :tracking_number, presence: true
  validates :tracking_number, uniqueness: true


  VALID_STATUSES = ["pending","in_transit","delivered"]
  validates :status, inclusion: { in: VALID_STATUSES }
  

  private

  def generate_tracking_number
    if tracking_number.blank?
      number = SecureRandom.hex(6)
      number = number.upcase

      self.tracking_number = "CRG-" + number
    end
  end
end