class AddCoordinatesToStarPart < ActiveRecord::Migration[5.2]
  def change
    add_column :star_parts, :latitude, :float
    add_column :star_parts, :longitude, :float
  end
end
