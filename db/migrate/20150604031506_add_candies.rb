class AddCandies < ActiveRecord::Migration
  def change
    create_table :candies do |t|
      t.string :name
      t.string :company
      t.string :image_link
      t.string :description
      t.integer :country_id
      t.integer :category_id
      t.boolean :discontinued
    end
  end
end
