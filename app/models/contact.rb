class Contact < ApplicationRecord

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :phone, format: {with: /[(]{0,1}[0-9]{1,3}[)]{0,1}[0-9]{3}[-][0-9]{4}/,  message: "Number format wrong. ex. (123)456-7890"}
  validates :city, presence: true
  validates :residentCountry, presence: true
  validates :state, presence: true
  validates :state, format: {with: /[A-Z]{2}/, message: "Please enter in the 2 letter abbreviation of your state or province. ex. MB"}
  validates :address, presence: true
end
