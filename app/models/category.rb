# frozen_string_literal: true

class Category < ApplicationRecord
  validates :description, presence: true
end
