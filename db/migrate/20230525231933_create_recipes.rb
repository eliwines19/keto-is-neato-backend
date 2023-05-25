class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :ingredients
      t.string :image_url
      t.belongs_to :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end