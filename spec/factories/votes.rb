include RandomData


FactoryGirl.define do
  factory :vote do
    value 0
    post
    user
  end
end
