class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.string :image_url
      t.references :type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
