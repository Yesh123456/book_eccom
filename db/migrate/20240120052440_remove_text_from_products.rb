class RemoveTextFromProducts < ActiveRecord::Migration[7.1]
  def change
    remove_column :products, :text, :string
  end
end
