# frozen_string_literal: true

class Issue < ApplicationRecord
  belongs_to :status
  belongs_to :priority
  belongs_to :severity

  validates :title, :description, :visibility, :submited_date, presence: true
end
