class CreateMechanics < ActiveRecord::Migration[6.1]
  def change
    create_table :mechanics do |t|
      t.string :location
      t.string :name
      t.boolean :insta_availability

      t.timestamps
    end
  end
end
