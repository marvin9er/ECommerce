class Armor < ApplicationRecord
  belongs_to :armorCategory
  has_one_attached :image

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :description, presence: true
  validates :armorCategory, presence: true
  validates :price, numericality: true
  validates :stamina, numericality: true
  validates :armor, numericality: true
  validates :steadiness, numericality: true
  validates :concealment, numericality: true
  validates :speed, numericality: true
end
