class Tournament < ActiveRecord::Base
    has_many :matches
    has_many :presences
end
