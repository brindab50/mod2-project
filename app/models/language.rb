class Language < ApplicationRecord
    has_many :code_words
    has_many :languages, through: :code_words
end
