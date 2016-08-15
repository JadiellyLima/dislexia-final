class Student < ActiveRecord::Base
	has_many :responsable_students
	has_many :activity_sessions
	has_many :activities, through: :activity_sessions
	has_many :sessions, through: :activity_sessions
end
