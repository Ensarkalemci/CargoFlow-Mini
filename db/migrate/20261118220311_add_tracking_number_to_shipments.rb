class AddTrackingNumberToShipments < ActiveRecord::Migration[8.1]
  def change
    add_column :shipments, :tracking_number, :string
  end
end
