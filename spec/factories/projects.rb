FactoryGirl.define do
  factory :project do
    sequence(:name) { |n| "Project ##{n}" }
    description "Project description here"
    amount 1.5
    category
  end
end
