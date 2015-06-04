class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.belongs_to :order, index: true
      t.string :ordered_by

      t.timestamps null: false
    end
  end
end
