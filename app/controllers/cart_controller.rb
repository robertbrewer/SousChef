class CartController < ApplicationController
  def add_to_cart
  	line_item = LineItem.new
  	line_item.recipe_id = params[:recipe_id]
    line_item.save

    line_item.total_time = line_item.recipe.cookTime + line_item.recipe.prepTime
    line_item.save

  	redirect_to root_path
  end

  def view_order
    @line_items = LineItem.all
  end

  def checkout
    @line_items = LineItem.all
    @meal = Meal.new

    sum = 0

    @line_items.each do |line_item|
      @meal.order_items[line_item.recipe_id] = 1
    end


    @line_items.each do |line_item|
      sum += line_item.total_time
    end

    @meal.total_cook_time = sum

    @meal.save

    LineItem.destroy_all
  end
end
