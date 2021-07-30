# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Reproducibility, type: :model do
  describe 'Validations' do
    it { is_expected.to validate_presence_of(:description)}
  end 
end
