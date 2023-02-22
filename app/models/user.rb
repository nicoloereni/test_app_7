class User < ApplicationRecord
  before_save { self.email = email.downcase }
  has_many :articles

  validates :username, presence: true, uniqueness: true, length: {minimum: 3, maximum: 25}
  validates :email, presence: true, length: {maximum: 105}

  has_secure_password
end
