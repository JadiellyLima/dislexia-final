json.extract! session, :id, :name, :date_session, :created_at, :updated_at
json.url session_url(session, format: :json)