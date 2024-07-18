class JoinInventoriesSuppliersJoin < ActiveRecord::Migration[7.1]
  def change
    create_table :inventories_suppliers, id: false do |t|
      t.bigint :inventory_id
      t.bigint :supplier_id
    end


    add_index :inventories_suppliers, :inventory_id
    add_index :inventories_suppliers, :supplier_id
    
  end


end
