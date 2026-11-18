class CreateServiceTypes < ActiveRecord::Migration[8.1]
  def change
    create_table :service_types do |t|
      t.string :name
      t.string :description
      t.references :transport_mode, null: false, foreign_key: true
      t.timestamps
    end
  end
end
