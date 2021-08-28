# frozen_string_literal: true

class AccessLevel < ApplicationRecord
  validates :description, presence: true
end
