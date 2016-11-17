FactoryGirl.define do
  factory :dependency do
    sequence(:name) { |n| "dep#{n}" }
  end
end
