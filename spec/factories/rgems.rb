FactoryGirl.define do
  factory :rgem do
    sequence(:name) { |n| "gem#{n}" }

    trait :wirh_dependencies do
      after(:create) do |rgem|
        create_list(:dependency, 3, rgem: rgem)
      end
    end
  end
end
