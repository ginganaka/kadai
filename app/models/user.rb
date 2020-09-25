class User < ApplicationRecord
   validates :name, presence: true, length: { in: 1..15 }
   VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
   validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
   VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{8,32}\z/i
   validates :password, length: { in: 8..32 }, format: { with: VALID_PASSWORD_REGEX }
   validates :name, presence: true
   validates :email, presence: true
   validates :password, presence: true
   
   has_secure_password
   
   has_many :topics
   has_many :favorites
   has_many :comments
   has_many :favorite_topics, through: :favorites, source: 'topic'
   has_many :comment_topics, through: :comments, source: 'topic'
end


