class JoinTableItemMeal < ActiveRecord::Migration
  def change
    create_join_table :items, :meals do |t|
      t.index [:item_id, :meal_id]
      # t.index [:meal_id, :item_id]
    end
  end
end
