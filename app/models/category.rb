class Category < ApplicationRecord
has_many :categoria_productos
has_many :productos, through: :categoria_productos
end
