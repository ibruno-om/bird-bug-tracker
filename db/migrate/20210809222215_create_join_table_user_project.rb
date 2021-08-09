class CreateJoinTableUserProject < ActiveRecord::Migration[6.1]
  def change
    create_join_table :users, :projects do |t|
      t.index [:user_id, :project_id]
      t.index [:project_id, :user_id]
    end
  end
end
