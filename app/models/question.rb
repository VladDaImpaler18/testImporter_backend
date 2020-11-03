class Question < ApplicationRecord
    belongs_to :category
    serialize :dummy, Array
    has_one_attached :diagram

    validates :question, :answer, presence: true
end
