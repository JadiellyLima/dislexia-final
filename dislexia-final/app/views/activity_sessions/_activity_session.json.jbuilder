json.extract! activity_session, :id, :session_id, :activity_id, :member_team_id, :student_id, :created_at, :updated_at
json.url activity_session_url(activity_session, format: :json)