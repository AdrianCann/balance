FactoryBot.define do
  factory :asset_class_section do
    percentage 5.5
    association :asset_class
    association :fund
  end
end
