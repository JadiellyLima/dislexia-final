class MemberTeam < ActiveRecord::Base
  belongs_to :member_team_office
  has_many :activity_sessions
end
