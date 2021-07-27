json.extract! issue, :id, :title, :description, :visibility, :submited_date, :additional_information, :product_version, :created_at, :updated_at
json.url issue_url(issue, format: :json)
