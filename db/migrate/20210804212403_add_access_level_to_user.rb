# frozen_string_literal: true

class AddAccessLevelToUser < ActiveRecord::Migration[6.1]
  def change
    add_reference :users, :access_level, null: false, foreign_key: true
  end
end
