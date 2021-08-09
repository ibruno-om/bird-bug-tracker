# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ProjectCategory, type: :model do
  describe 'Associations' do
    it { is_expected.to belong_to(:project) }
    it { is_expected.to belong_to(:category) }
    it { is_expected.to belong_to(:assigned_user).optional }
  end
end
