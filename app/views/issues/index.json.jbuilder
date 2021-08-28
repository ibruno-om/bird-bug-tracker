# frozen_string_literal: true

json.array! @issues, partial: 'issues/issue', as: :issue
