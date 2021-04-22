class Order < ApplicationRecord
  has_many :armor_orders
  belongs_to :user, optional: true

  validates :user, presence: true
end
