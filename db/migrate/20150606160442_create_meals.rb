class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.belongs_to :order, index: true
      t.string :name

      t.timestamps null: false
    end
  end
end
