class User < ApplicationRecord
    validates :name, presence: true, length: { maximum: 20 },uniqueness: true
     has_secure_password
      validates :password, presence: true, length: { minimum: 4 }
end
