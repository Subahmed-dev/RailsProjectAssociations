class Supplier < ApplicationRecord
  has_and_belongs_to_many :inventories
end
