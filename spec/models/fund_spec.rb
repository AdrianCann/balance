require 'rails_helper'

RSpec.describe Fund, type: :model do
  it { should validate_uniqueness_of(:ticker) }
  it { should validate_presence_of(:ticker) }
  it { should have_many(:fund_sections) }
end
