class CreateShipments < ActiveRecord::Migration[8.1]
  def change
    create_table :shipments do |t|
      t.string :name
      t.decimal :weight
      t.decimal :volume
      t.string :origin
      t.string :destination
      t.string :status
      t.references :service_type, null: false, foreign_key: true
      t.timestamps
    end
  end
end
