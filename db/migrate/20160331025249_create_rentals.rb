class CreateRentals < ActiveRecord::Migration
  def change
    create_table :rentals do |t|
      t.decimal :total, precision: 12, scale: 3
      t.decimal :total{12,3}
      t.references :rental_status, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
