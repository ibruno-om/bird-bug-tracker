# frozen_string_literal: true

class AddReproducibilityToIssue < ActiveRecord::Migration[6.1]
  def change
    add_reference :issues, :reproducibility, null: false, foreign_key: true
  end
end
