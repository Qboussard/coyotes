class Player < ActiveRecord::Base
  validates_presence_of :firstname
end
