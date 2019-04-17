class User < ApplicationRecord
has_secure_password validations: true

  validates :email, presence: true, uniqueness: true
    has_many :posts, dependent: :destroy
end
