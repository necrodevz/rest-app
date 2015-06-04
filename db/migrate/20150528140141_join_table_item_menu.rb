class JoinTableItemMenu < ActiveRecord::Migration
  def change
    create_join_table :items, :menus, id: false do |t|
      # t.index [:menu_id, :item_id]
      t.index [:item_id, :menu_id]
    end
  end
end
