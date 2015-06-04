class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.belongs_to :company
      t.string :name
      t.string :tel_no, null: false
      t.string :email, null: false
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
