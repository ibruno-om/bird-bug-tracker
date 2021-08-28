# frozen_string_literal: true

FactoryBot.define do
  factory :project_category do
    project { nil }
    category { nil }
    user { nil }
  end
end
