class Category < ApplicationRecord
    has_many :questions

    validates :title, presence: true
end
