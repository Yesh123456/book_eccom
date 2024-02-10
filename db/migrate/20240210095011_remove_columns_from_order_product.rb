class RemoveColumnsFromOrderProduct < ActiveRecord::Migration[7.1]
  def change
    remove_column :order_products, :size, :string
  end
end
