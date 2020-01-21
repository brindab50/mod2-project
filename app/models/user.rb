class User < ApplicationRecord
    has_secure_password
    has_many :code_words
    has_many :languages, through: :code_words
end
