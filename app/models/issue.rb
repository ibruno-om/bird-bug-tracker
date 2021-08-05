# frozen_string_literal: true

class Issue < ApplicationRecord
  belongs_to :status
  belongs_to :priority
  belongs_to :severity
  belongs_to :reproducibility
  belongs_to :category
  belongs_to :creator_user, class_name: 'User', foreign_key: 'creator_user_id'
  belongs_to :assigned_user, class_name: 'User', foreign_key: 'assigned_user_id', optional: true

  validates :title, :description, :visibility, :submited_date, presence: true
end
