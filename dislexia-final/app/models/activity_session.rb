class ActivitySession < ActiveRecord::Base
  belongs_to :session
  belongs_to :activity
  belongs_to :member_team
  belongs_to :student
end
