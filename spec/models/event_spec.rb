require 'rails_helper'

describe Event, type: :model do
	it { should validate_presence_of :date }
  it { should validate_presence_of :event }
  it { should validate_length_of(:event).is_at_most(160) }
end
