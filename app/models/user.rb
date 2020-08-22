class User < ApplicationRecord
   validates :name, presence: true, length: { in: 1..15 }
   VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
   validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
   VALID_PASSWORD_REGEX = /\A[a-z0-9]+\z/i
   validates :password, length: { in: 8..32 }, format: { with: VALID_PASSWORD_REGEX }
   
   has_secure_password
end
