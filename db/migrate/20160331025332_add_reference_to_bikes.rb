class AddReferenceToBikes < ActiveRecord::Migration
  def change
  	t.references :rentals, index: true, foreign_key: true
  end
end
