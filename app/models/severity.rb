# frozen_string_literal: true

class Severity < ApplicationRecord
  validates :description, presence: true
end
