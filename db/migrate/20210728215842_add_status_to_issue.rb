# frozen_string_literal: true

class AddStatusToIssue < ActiveRecord::Migration[6.1]
  def change
    add_reference :issues, :status, null: false, foreign_key: true
  end
end
