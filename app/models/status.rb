# frozen_string_literal: true

class Status < ApplicationRecord
  validates :description, presence: true
end
