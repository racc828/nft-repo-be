class Collection < ApplicationRecord
    has_many :collaborations
    has_many :artists, through: :collaborations
    has_many :droptypes, dependent: :destroy
end
