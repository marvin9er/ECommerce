class ArmorCategory < ApplicationRecord
  has_many :armors
  belongs_to :category

  validates :name, presence: true
  validates :category, presence: true
end
