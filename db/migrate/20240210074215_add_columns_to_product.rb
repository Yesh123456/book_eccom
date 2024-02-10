class AddColumnsToProduct < ActiveRecord::Migration[7.1]
  def change
    add_column :products, :publisher, :string
    add_column :products, :date_of_publication, :string
    add_column :products, :edition, :string
    add_column :products, :isbn_number, :integer
    add_column :products, :author, :string
    add_column :products, :weight, :string
    add_column :products, :binding_type, :string
  end
end
