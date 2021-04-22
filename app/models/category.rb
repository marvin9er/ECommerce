class Category < ApplicationRecord
  has_many :armorCategory


  validates :name, presence: true
  validates :name, uniqueness: true

end
