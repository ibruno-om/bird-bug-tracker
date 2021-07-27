FactoryBot.define do
  factory :issue do
    title { "MyString" }
    description { "MyText" }
    visibility { 1 }
    submited_date { "2021-07-26 22:18:29" }
    additional_information { "MyText" }
    product_version { "MyString" }
  end
end
