class AddAddressToStarPart < ActiveRecord::Migration[5.2]
  def change
    add_column :star_parts, :name, :string
    add_column :star_parts, :address, :string
  end
end
