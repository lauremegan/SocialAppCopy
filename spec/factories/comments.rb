# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :comment do
    article_id 1
    name "MyString"
    email "MyString"
    body "MyText"
  end
end
