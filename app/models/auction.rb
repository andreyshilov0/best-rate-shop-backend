class Auction < ApplicationRecord
  belongs_to :product
  has_many :auction_bids, dependent: :destroy
end
