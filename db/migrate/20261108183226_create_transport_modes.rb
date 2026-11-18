class CreateTransportModes < ActiveRecord::Migration[8.1]
  def change
    create_table :transport_modes do |t|
      t.string :name
      t.timestamps
    end
  end
end
