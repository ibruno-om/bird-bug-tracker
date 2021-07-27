# frozen_string_literal: true

class CreateIssues < ActiveRecord::Migration[6.1]
  def change
    create_table :issues do |t|
      t.string :title
      t.text :description
      t.integer :visibility
      t.timestamp :submited_date
      t.text :additional_information
      t.string :product_version

      t.timestamps
    end
  end
end
