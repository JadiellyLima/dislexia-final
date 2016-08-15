json.extract! conctact, :id, :name, :email, :msg, :created_at, :updated_at
json.url conctact_url(conctact, format: :json)