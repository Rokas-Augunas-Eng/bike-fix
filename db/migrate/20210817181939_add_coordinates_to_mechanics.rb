class AddCoordinatesToMechanics < ActiveRecord::Migration[6.1]
  def change
    add_column :mechanics, :latitude, :float
    add_column :mechanics, :longitude, :float
  end
end
