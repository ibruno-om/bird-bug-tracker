# frozen_string_literal: true

class Issue < ApplicationRecord
  validates :title, :description, :visibility, :submited_date, presence: true
end
