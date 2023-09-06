class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :validatable

  has_many :products, dependent: :destroy
  has_many :favorite_products, dependent: :destroy
  has_many :auction_bids, dependent: :destroy
  # Единственное только мне кажется ставки лучше нулить, так как к ним возможно потом нужно будет получать доступ
  # но если в нашем случае аукцион анонимный возможно удалять их будет не самым плохим решением.

  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true
  validates :birthdate, presence: true
  validates :balance, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
