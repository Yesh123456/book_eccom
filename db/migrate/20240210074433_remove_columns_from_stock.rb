class RemoveColumnsFromStock < ActiveRecord::Migration[7.1]
  def change
    remove_column :stocks, :size, :string
  end
end
