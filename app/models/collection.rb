class Collection < ApplicationRecord
    belongs_to :artist
    has_many :droptypes
end
