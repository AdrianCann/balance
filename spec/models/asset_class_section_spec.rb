require 'rails_helper'

RSpec.describe AssetClassSection, type: :model do
  it { should belong_to(:fund) }
  it { should belong_to(:asset_class) }

  describe 'assocation sanity check' do
    it 'has assocations with AssetClass and Fund' do
      a_c_s = create(:asset_class_section)

      expect(a_c_s.asset_class)
      expect(a_c_s.fund)
    end
  end
end
