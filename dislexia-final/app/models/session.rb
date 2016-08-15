class Session < ActiveRecord::Base
	has_many :activity_sessions
	has_many :activities, through: :activity_sessions
end
