class Category < ApplicationRecord
    has_many :questions
    attribute :questions
    validates :title, presence: true
end
