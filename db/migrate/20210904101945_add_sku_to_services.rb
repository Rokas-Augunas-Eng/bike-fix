class AddSkuToServices < ActiveRecord::Migration[6.1]
  def change
    add_column :services, :sku, :string
  end
end
