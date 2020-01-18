class CreateCategoriaProductos < ActiveRecord::Migration[6.0]
  def change
    create_table :categoria_productos do |t|
      t.references :producto, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
