class Meal < ActiveRecord::Base
	has_many :line_items
	serialize :order_items, Hash
end
