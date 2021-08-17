class CreateServices < ActiveRecord::Migration[6.1]
  def change
    create_table :services do |t|
      t.string :repair_name
      t.integer :cost
      t.references :mechanic, null: false, foreign_key: true

      t.timestamps
    end
  end
end
