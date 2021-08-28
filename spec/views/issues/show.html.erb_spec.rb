# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'issues/show', type: :view do
  before(:each) do
    @issue = assign(:issue, Issue.create!(
                              title: 'Title',
                              description: 'MyText',
                              visibility: 2,
                              additional_information: 'MyText',
                              product_version: 'Product Version'
                            ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Product Version/)
  end
end
