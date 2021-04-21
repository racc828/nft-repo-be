class Artist < ApplicationRecord
    belongs_to :user
    has_many :collaborations
    has_many :collections, through: :collaborations
end
