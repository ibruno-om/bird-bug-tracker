# frozen_string_literal: true

FactoryBot.define do
  factory :project do
    name { 'MyString' }
    description { 'MyString' }
    enable { 1 }
    visibility { 1 }
  end
end
