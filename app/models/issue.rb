# frozen_string_literal: true

class Issue < ApplicationRecord
  belongs_to :status

  validates :title, :description, :visibility, :submited_date, presence: true
end
