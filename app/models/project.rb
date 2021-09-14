# frozen_string_literal: true

class Project < ApplicationRecord
  has_and_belongs_to_many :users

  validates :name, :enable, :visibility, presence: true

  enum visibility: { public_view: 0, private_view: 1 }
end
