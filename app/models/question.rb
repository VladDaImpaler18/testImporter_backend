class Question < ApplicationRecord
    belongs_to :category
    serialize :dummy, Array
    has_one_attached :diagram

    validates :question, :answer, presence: true
    validates :question, uniqueness: true
    validate :must_have_3_dummies

    private
    def must_have_3_dummies
        if dummy.count < 3
            errors.add(:dummy, "At least 3 incorrect questions required")
        end
    end

end
