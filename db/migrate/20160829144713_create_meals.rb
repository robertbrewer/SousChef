class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.text :order_items
      t.integer :total_prep_time
      t.integer :total_cook_time

      t.timestamps null: false
    end
  end
end
