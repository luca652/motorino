class AddCoordinatesToMopeds < ActiveRecord::Migration[7.0]
  def change
    add_column :mopeds, :latitude, :float
    add_column :mopeds, :longitude, :float
  end
end
