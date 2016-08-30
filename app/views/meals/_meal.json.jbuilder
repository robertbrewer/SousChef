json.extract! meal, :id, :order_items, :total_prep_time, :total_cook_time, :created_at, :updated_at
json.url meal_url(meal, format: :json)