require 'rails_helper'

describe Player, type: :model do
  it { should validate_presence_of :firstname }
end