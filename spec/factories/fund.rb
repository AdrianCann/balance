FactoryBot.define do
  factory :fund do
    sequence :ticker do |i|
      "TICK#{i}"
    end
  end
end
