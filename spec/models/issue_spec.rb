# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Issue, type: :model do
  describe 'Validations' do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:description) }
    it { is_expected.to validate_presence_of(:visibility) }
    it { is_expected.to validate_presence_of(:submited_date) }
  end
end
