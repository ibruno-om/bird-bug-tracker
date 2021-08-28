# frozen_string_literal: true

class Reproducibility < ApplicationRecord
  validates :description, presence: true
end
