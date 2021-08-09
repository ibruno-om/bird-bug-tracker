# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Project, type: :model do
  describe 'Validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:enable) }
    it { is_expected.to validate_presence_of(:visibility) }
  end

  describe 'Associations' do
    it { is_expected.to have_and_belong_to_many(:users) }
  end
end
