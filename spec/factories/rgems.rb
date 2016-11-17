FactoryGirl.define do
  factory :rgem do
    name 'rake'

    trait :wirh_dependencies do
      after(:create) do |rgem|
        create_list(:dependency, 3, rgem: rgem)
      end
    end
  end
end
