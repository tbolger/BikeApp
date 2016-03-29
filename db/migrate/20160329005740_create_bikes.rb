class CreateBikes < ActiveRecord::Migration
  def change
    create_table :bikes do |t|
      t.text :description
      t.text :manufacturer
      t.decimal :price

      t.timestamps null: false
    end
  end
end
