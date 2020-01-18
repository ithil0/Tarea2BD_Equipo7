class Producto < ApplicationRecord
has_many :categoria_productos
has_many :order_items
has_many :categories, through: :categoria_productos
end
