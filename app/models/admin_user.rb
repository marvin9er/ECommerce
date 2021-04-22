class AdminUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :password, presence: true

  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable
end
