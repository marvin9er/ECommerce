class ArmorOrder < ApplicationRecord
  belongs_to :order
  has_many :armors

  validates :order, presence: true
  validates :price, numericality: true
end
