# frozen_string_literal: true

class AddAssignedUserToIssue < ActiveRecord::Migration[6.1]
  def change
    add_reference :issues, :assigned_user, references: :users
    add_foreign_key :issues, :users, column: :assigned_user_id
  end
end
