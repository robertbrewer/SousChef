class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.integer :recipe_id
      t.integer :order_id

      t.timestamps null: false
    end
  end
end
