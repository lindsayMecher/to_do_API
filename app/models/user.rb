class User < ApplicationRecord
    has_many :to_dos
    has_secure_password

    validates :email, presence: true, uniqueness: true
    
end
