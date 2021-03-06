# frozen_string_literal: true

class AddSeverityToIssue < ActiveRecord::Migration[6.1]
  def change
    add_reference :issues, :severity, null: false, foreign_key: true
  end
end
