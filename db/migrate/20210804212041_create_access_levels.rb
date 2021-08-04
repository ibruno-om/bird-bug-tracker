class CreateAccessLevels < ActiveRecord::Migration[6.1]
  def change
    create_table :access_levels do |t|
      t.string :description

      t.timestamps
    end
  end
end
