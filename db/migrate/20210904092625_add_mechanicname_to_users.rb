class AddMechanicnameToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :mechanic_name, :string
  end
end
