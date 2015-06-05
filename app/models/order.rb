class Order < ActiveRecord::Base
  belongs_to :customer
  has_many :meals
  has_many :items, :through => :meals
end
