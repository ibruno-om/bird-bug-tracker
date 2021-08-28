# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'issues/new', type: :view do
  before(:each) do
    assign(:issue, Issue.new(
                     title: 'MyString',
                     description: 'MyText',
                     visibility: 1,
                     additional_information: 'MyText',
                     product_version: 'MyString'
                   ))
  end

  it 'renders new issue form' do
    render

    assert_select 'form[action=?][method=?]', issues_path, 'post' do
      assert_select 'input[name=?]', 'issue[title]'

      assert_select 'textarea[name=?]', 'issue[description]'

      assert_select 'input[name=?]', 'issue[visibility]'

      assert_select 'textarea[name=?]', 'issue[additional_information]'

      assert_select 'input[name=?]', 'issue[product_version]'
    end
  end
end
