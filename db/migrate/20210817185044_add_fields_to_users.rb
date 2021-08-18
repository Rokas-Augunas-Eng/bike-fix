class AddFieldsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :mechanic, :boolean
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :bike_info, :text
    add_column :users, :city, :string
    add_column :users, :location, :string
    add_column :users, :company_name, :string
    add_column :users, :insta_availability, :boolean
  end
end
