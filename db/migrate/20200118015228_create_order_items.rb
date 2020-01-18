class CreateOrderItems < ActiveRecord::Migration[6.0]
  def change
    create_table :order_items do |t|
      t.integer :numero
      t.integer :producto_id
      t.integer :order_id
      t.integer :total
      t.integer :unit_price

      t.timestamps
    end
  end
end
