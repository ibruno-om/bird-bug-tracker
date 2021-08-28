# frozen_string_literal: true

class CreateReproducibilities < ActiveRecord::Migration[6.1]
  def change
    create_table :reproducibilities do |t|
      t.string :description

      t.timestamps
    end
  end
end
