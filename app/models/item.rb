class Item < ActiveRecord::Base
  has_and_belongs_to_many :menus
  has_and_belongs_to_many :meals
  belongs_to :category
  scope :category_items, -> id {where('category_id = ?', id)}
  scope :menu_items, -> id {where('menu_id = ?', id)}
  scope :meal_items, -> id {where('meal_id = ?', id)}
end
