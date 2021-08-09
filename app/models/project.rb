# frozen_string_literal: true

class Project < ApplicationRecord
    has_and_belongs_to_many :users

    validates :name, :enable, :visibility, presence: true
end
