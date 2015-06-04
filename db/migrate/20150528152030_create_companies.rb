class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name, null: false
      t.string :tel_no, null: false
      t.string :street_address
      t.string :area
      t.text :comments

      t.timestamps null: false
    end
  end
end
