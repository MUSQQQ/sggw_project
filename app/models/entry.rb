class Entry < ApplicationRecord
    belongs_to :user    #second part of one-to-many-assoc
    validates :description, presence: true, length: {minimum: 2, maximum: 100}
    validates :comment, length: {minimum: 0, maximum: 100}
end
