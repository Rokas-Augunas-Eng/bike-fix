class AddPriceToServies < ActiveRecord::Migration[6.1]
  def change
    add_monetize :services, :price, currency: { present: false }
  end
end
