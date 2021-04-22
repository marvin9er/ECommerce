class User < ApplicationRecord
  has_one :order

  validates :email, presence: true
  validates :email, uniqueness: true
  validates :phonenumber, format: {with: /[(]{0,1}[0-9]{1,3}[)]{0,1}[0-9]{3}[-][0-9]{4}/,  message: "Number format wrong. ex. (123)456-7890"}
  validates :name, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :province, format: {with: /[A-Z]{2}/, message: "Please enter in the 2 letter abbreviation of your state or province. ex. MB"}
  validates :address, presence: true
end
