# frozen_string_literal: true

class ProjectCategory < ApplicationRecord
  belongs_to :project
  belongs_to :category
  belongs_to :assigned_user, class_name: 'User', foreign_key: 'assigned_user_id', optional: true
end
