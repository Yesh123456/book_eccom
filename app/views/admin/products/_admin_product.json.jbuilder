json.extract! admin_product, :id, :name, :description, :text, :price, :publisher, :date_of_publication, 
        :edition, :isbn_number, :author, :weight, :binding_type, :category_id, :active, :created_at, :updated_at
json.url admin_product_url(admin_product, format: :json)
