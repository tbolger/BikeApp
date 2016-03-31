class CreateRentals < ActiveRecord::Migration
  def change
    create_table :rentals do |t|
      t.boolean :is_avalailable
      t.date :rental_start_date
      t.date :rental_end_date
      t.references :user, index: true, foreign_key: true
      t.references :bike, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
