class User < ActiveRecord::Base
  has_many :posts, foreign_key: :user_id
  has_many :comments, foreign_key: :user_id
  has_secure_password validations: false
  has_many :votes

  validates :username, presence: true, uniqueness: true
  validates :password, presence: true, on: :create, length: { minimum: 5}
end