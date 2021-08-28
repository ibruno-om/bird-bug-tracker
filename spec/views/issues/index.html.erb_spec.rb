# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'issues/index', type: :view do
  before(:each) do
    assign(:issues, [
             Issue.create!(
               title: 'Title',
               description: 'MyText',
               visibility: 2,
               additional_information: 'MyText',
               product_version: 'Product Version'
             ),
             Issue.create!(
               title: 'Title',
               description: 'MyText',
               visibility: 2,
               additional_information: 'MyText',
               product_version: 'Product Version'
             )
           ])
  end

  it 'renders a list of issues' do
    render
    assert_select 'tr>td', text: 'Title'.to_s, count: 2
    assert_select 'tr>td', text: 'MyText'.to_s, count: 2
    assert_select 'tr>td', text: 2.to_s, count: 2
    assert_select 'tr>td', text: 'MyText'.to_s, count: 2
    assert_select 'tr>td', text: 'Product Version'.to_s, count: 2
  end
end
