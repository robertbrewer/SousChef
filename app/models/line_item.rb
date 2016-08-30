class LineItem < ActiveRecord::Base
	belongs_to :recipe
	belongs_to :meal
end
