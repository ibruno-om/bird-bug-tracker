class AddUserToIssue < ActiveRecord::Migration[6.1]
  def change
    add_reference :issues, :creator_user, null: false, references: :users
    add_foreign_key :issues, :users, column: :creator_user_id
  end
end
