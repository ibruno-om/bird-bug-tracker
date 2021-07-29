# frozen_string_literal: true

class Priority < ApplicationRecord
    validates :description, presence: true
end
