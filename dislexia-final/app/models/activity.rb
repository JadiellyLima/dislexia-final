class Activity < ActiveRecord::Base
	has_many :activity_sessions
	has_many :sessions, through: :activity_sessions
end
