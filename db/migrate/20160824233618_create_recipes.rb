class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :cuisine
      t.string :category
      t.string :ingredients
      t.integer :prepTime
      t.integer :cookTime
      t.string :cookware
      t.string :image
      t.text :instructions

      t.timestamps null: false
    end
  end
end
