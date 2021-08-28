# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'issues/edit', type: :view do
  before(:each) do
    @issue = assign(:issue, Issue.create!(
                              title: 'MyString',
                              description: 'MyText',
                              visibility: 1,
                              additional_information: 'MyText',
                              product_version: 'MyString'
                            ))
  end

  it 'renders the edit issue form' do
    render

    assert_select 'form[action=?][method=?]', issue_path(@issue), 'post' do
      assert_select 'input[name=?]', 'issue[title]'

      assert_select 'textarea[name=?]', 'issue[description]'

      assert_select 'input[name=?]', 'issue[visibility]'

      assert_select 'textarea[name=?]', 'issue[additional_information]'

      assert_select 'input[name=?]', 'issue[product_version]'
    end
  end
end
