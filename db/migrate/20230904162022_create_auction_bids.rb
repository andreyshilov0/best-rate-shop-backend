class CreateAuctionBids < ActiveRecord::Migration[7.0]
  def change
    create_table :auction_bids do |t|
      t.references :auction, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.decimal :requested_price, precision: 10, scale: 2

      t.timestamps
    end
  end
end
