class ChangeColumnName < ActiveRecord::Migration[7.1]
  def change
    rename_column :stocks, :amount, :stock_quantity
  end
end
