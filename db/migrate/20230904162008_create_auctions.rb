class CreateAuctions < ActiveRecord::Migration[7.0]
  def change
    create_table :auctions do |t|
      t.references :product, null: false
      t.string :status, default: 'active'

      t.timestamps
    end
  end
end
