class DroppaySubscriptionstable < ActiveRecord::Migration[6.1]
  def change
    drop_table :pay_charges
    drop_table :pay_subscriptions
  end
end
