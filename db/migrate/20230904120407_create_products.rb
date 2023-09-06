class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.references :user, foreign_key: true
      t.string :name, null: false
      t.text :description, null: false
      t.decimal :price, null: false
      t.string :status, default: 'in stock'
      t.string :image, null: false

      t.timestamps
    end
  end
end
