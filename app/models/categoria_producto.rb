class CategoriaProducto < ApplicationRecord
  belongs_to :producto
  belongs_to :category
end
