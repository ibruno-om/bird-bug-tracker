class CreateSeverities < ActiveRecord::Migration[6.1]
  def change
    create_table :severities do |t|
      t.string :description

      t.timestamps
    end
  end
end
