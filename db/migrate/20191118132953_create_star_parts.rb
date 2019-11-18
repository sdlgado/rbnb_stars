class CreateStarParts < ActiveRecord::Migration[5.2]
  def change
    create_table :star_parts do |t|
      t.string :category
      t.references :user, foreign_key: true
      t.string :name_of_star
      t.text :description
      t.string :name_of_part
      t.integer :rating
      t.integer :price

      t.timestamps
    end
  end
end
