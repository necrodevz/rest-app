class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.belongs_to :category, index: true
      t.string :name, null: false
      t.text :description, null:false
      t.decimal :price, precision: 10, scale: 2, null: false


      t.timestamps null: false
    end
  end
end
