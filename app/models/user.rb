class User < ActiveRecord::Base

  has_secure_password validations: false
  validates :password, presence: true, length: { minimum: 2 }
  validates :email, uniqueness: true

end
