# frozen_string_literal: true

class Project < ApplicationRecord
    validates :name, :enable, :visibility, presence: true
end
