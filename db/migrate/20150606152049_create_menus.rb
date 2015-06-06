class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.date :from_date, null: false
      t.date :to_date, null: false

      t.timestamps null: false
    end
  end
end
