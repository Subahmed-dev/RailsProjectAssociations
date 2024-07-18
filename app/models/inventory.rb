class Inventory < ApplicationRecord
  has_and_belongs_to_many :suppliers, dependent: :destroy
   #see more dependancies
   
   validates :item_name, presence: true
end
