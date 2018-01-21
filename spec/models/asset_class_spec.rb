require 'rails_helper'

RSpec.describe AssetClass, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_uniqueness_of(:name) }
  it { should have_many(:funds) } # which funds can I buy to get bonds, etc.
  it { should have_many(:asset_class_sections) } # May not need to call directly
end
