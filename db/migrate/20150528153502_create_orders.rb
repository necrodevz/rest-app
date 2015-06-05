class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.date :delivery_date


      t.timestamps null: false
    end
  end
end
