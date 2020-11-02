class Question < ApplicationRecord
    serialize :dummy, Array
    has_one_attached :diagram
end
