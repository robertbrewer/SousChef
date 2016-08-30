json.extract! recipe, :id, :name, :cuisine, :category, :ingredients, :prepTime, :cookTime, :cookware, :image, :instructions, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)