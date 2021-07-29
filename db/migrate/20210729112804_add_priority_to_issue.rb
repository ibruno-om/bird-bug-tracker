class AddPriorityToIssue < ActiveRecord::Migration[6.1]
  def change
    add_reference :issues, :priority, null: false, foreign_key: true
  end
end
