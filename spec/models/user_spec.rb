# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:encrypted_password) }
  end

  describe 'Associations' do
    it { is_expected.to belong_to(:access_level) }
    it { is_expected.to have_and_belong_to_many(:projects) }
  end
end
