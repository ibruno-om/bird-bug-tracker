# frozen_string_literal: true

class AddCategoryToIssue < ActiveRecord::Migration[6.1]
  def change
    add_reference :issues, :category, null: false, foreign_key: true
  end
end
