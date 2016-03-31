class CreateRentalStatuses < ActiveRecord::Migration
  def change
    create_table :rental_statuses do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
