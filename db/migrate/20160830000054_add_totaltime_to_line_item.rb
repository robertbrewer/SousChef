class AddTotaltimeToLineItem < ActiveRecord::Migration
  def change
    add_column :line_items, :total_time, :integer
  end
end
