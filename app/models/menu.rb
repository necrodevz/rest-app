class Menu < ActiveRecord::Base
  has_and_belongs_to_many :items
  accepts_nested_attributes_for :items
end